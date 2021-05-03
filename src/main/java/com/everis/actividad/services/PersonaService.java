package com.everis.actividad.services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.actividad.models.Persona;
import com.everis.actividad.repositories.PersonaRepository;


@Service
public class PersonaService {
	
	@Autowired
	PersonaRepository personaRepository;
	
	public Persona savePersona(Persona persona) {
		
		return personaRepository.save(persona);
	}
	
	public List<Persona> allPersonas(){
		return personaRepository.findAll();
	}
	public Optional<Persona> findById(Long id){
		Optional<Persona> op = personaRepository.findById(id);
		return op;
	}
	public void deleteById(Long id) {
		personaRepository.deleteById(id);	
	}
	
	public void actualizarPersona(@Valid Persona persona) {
		personaRepository.save(persona);
	}
	

}
