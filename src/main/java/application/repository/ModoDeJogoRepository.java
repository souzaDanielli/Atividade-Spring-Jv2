package application.repository;

import org.springframework.data.repository.CrudRepository;

import application.model.ModoDeJogo;

public interface ModoDeJogoRepository extends CrudRepository<ModoDeJogo, Long>{
    public ModoDeJogo findByDescricao(String descricao);
}