package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import application.model.ModoDeJogo;
import application.repository.ModoDeJogoRepository;

@Controller
@RequestMapping("/modos")
public class ModoDeJogoController {
    @Autowired
    private ModoDeJogoRepository modoRepo;

    @RequestMapping("/insert")
    public String insert(){
        return "/modos/insert";
    }
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("descricao") String descricao){
        ModoDeJogo modo = new ModoDeJogo();
        modo.setDescricao(descricao);
        modoRepo.save(modo);
        return "redirect:/modos/list";
    }

    @RequestMapping("/list")
    public String list(Model ui){
        ui.addAttribute("modos", modoRepo.findAll());
        return "/modos/list";
    }

    @RequestMapping("/update/{id}")
    public String update(@PathVariable long id, Model ui){
        Optional<ModoDeJogo> modo = modoRepo.findById(id);
        if (modo.isPresent()){
            ui.addAttribute("modo", modo.get());
            return "/modos/update";
        }
        return "redirect:/modos/list";
    }
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestParam("id") long id, @RequestParam("descricao") String descricao){
        Optional<ModoDeJogo> modo_n = modoRepo.findById(id);
        if (modo_n.isPresent()){
            ModoDeJogo modo = modo_n.get();
            modo.setDescricao(descricao);
            modoRepo.save(modo);
        }
        return "redirect:/modos/list";
    }

    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable long id, Model ui){
        Optional<ModoDeJogo> modo = modoRepo.findById(id);
        if (modo.isPresent()){
            ui.addAttribute("modo", modo.get());
            return "/modos/delete";
        }
        return "redirect:/modos/list";
    }
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") long id){
        modoRepo.deleteById(id);
        return "redirect:/modos/list";
    }
}
