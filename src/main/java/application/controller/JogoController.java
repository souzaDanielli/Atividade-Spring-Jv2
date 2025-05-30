package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import application.model.Jogo;
import application.repository.JogoRepository;
import application.repository.ModoDeJogoRepository;
import application.repository.GeneroRepository;
import application.repository.PlataformaRepository;

@Controller
@RequestMapping("/jogos")
public class JogoController {
    @Autowired
    private JogoRepository jogoRepo;

    @Autowired
    private ModoDeJogoRepository modoRepo;

    @Autowired
    private GeneroRepository generoRepo;

    @Autowired
    private PlataformaRepository plataformaRepo;

    @RequestMapping("/insert")
    public String insert(Model ui){
        ui.addAttribute("modos", modoRepo.findAll());
        ui.addAttribute("generos", generoRepo.findAll());
        ui.addAttribute("plataformas", plataformaRepo.findAll());
        return "/jogos/insert";
    }
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(
        @RequestParam("titulo") String titulo,
        @RequestParam("modoDeJogo") Long idModo,
        @RequestParam("generos") Optional<long[]> idsGeneros,
        @RequestParam("plataformas") Optional<long[]> idsPlataformas
    ){
        Jogo jogo = new Jogo();
        jogo.setTitulo(titulo);

        modoRepo.findById(idModo).ifPresent(jogo::setModoDeJogo);

        idsGeneros.ifPresent(ids -> {
            for (long id : ids) {
                generoRepo.findById(id).ifPresent(g -> jogo.getGeneros().add(g));
            }
        });

        idsPlataformas.ifPresent(ids -> {
            for (long id : ids) {
                plataformaRepo.findById(id).ifPresent(p -> jogo.getPlataformas().add(p));
            }
        });

        jogoRepo.save(jogo);
        return "redirect:/jogos/list";
    }

    @RequestMapping("/list")
    public String list(Model ui){
        ui.addAttribute("jogos", jogoRepo.findAll());
        return "/jogos/list";
    }

    @RequestMapping("/update/{id}")
    public String update(@PathVariable long id, Model ui){
        Optional<Jogo> jogo = jogoRepo.findById(id);
        if (jogo.isPresent()) {
            ui.addAttribute("jogo", jogo.get());
            ui.addAttribute("modos", modoRepo.findAll());
            ui.addAttribute("generos", generoRepo.findAll());
            ui.addAttribute("plataformas", plataformaRepo.findAll());
            return "/jogos/update";
        }
        return "redirect:/jogos/list";
    }
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(
        @RequestParam("id") long id,
        @RequestParam("titulo") String titulo,
        @RequestParam("modoDeJogo") Long idModo,
        @RequestParam("generos") Optional<long[]> idsGeneros,
        @RequestParam("plataformas") Optional<long[]> idsPlataformas
    ){
        Optional<Jogo> jogo_n = jogoRepo.findById(id);
        if (jogo_n.isPresent()) {
            Jogo jogo = jogo_n.get();
            jogo.setTitulo(titulo);

            modoRepo.findById(idModo).ifPresent(jogo::setModoDeJogo);

            jogo.getGeneros().clear();
            idsGeneros.ifPresent(ids -> {
                for (long gid : ids) {
                    generoRepo.findById(gid).ifPresent(g -> jogo.getGeneros().add(g));
                }
            });
            jogo.getPlataformas().clear();
            idsPlataformas.ifPresent(ids -> {
                for (long pid : ids) {
                    plataformaRepo.findById(pid).ifPresent(p -> jogo.getPlataformas().add(p));
                }
            });

            jogoRepo.save(jogo);
        }
        return "redirect:/jogos/list";
    }
    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable long id, Model ui){
        Optional<Jogo> jogo = jogoRepo.findById(id);
        if (jogo.isPresent()) {
            ui.addAttribute("jogo", jogo.get());
            return "/jogos/delete";
        }
        return "redirect:/jogos/list";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") long id){
        jogoRepo.deleteById(id);
        return "redirect:/jogos/list";
    }
}
