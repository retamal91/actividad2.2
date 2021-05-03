package com.everis.actividad.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.everis.actividad.models.Persona;

@Repository
public interface PersonaRepository extends CrudRepository<Persona, Long>{

	List<Persona> findAll();
	
}
