package com.everis.actividad.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.everis.actividad.models.Persona;
import com.everis.actividad.repositories.PersonaRepository;
import com.everis.actividad.services.PersonaService;

@RestController
public class ApiController {
	
	@Autowired
	PersonaService personaService;
	@Autowired
	PersonaRepository personaRepository;

	
	@RequestMapping("/api/personas")
	public List<Persona> ListPersonas(){
		List<Persona> personas_lista = personaService.allPersonas();
		
		return personas_lista;
	}
	
	@RequestMapping("/api/personas/{id}")
	public Optional<Persona> buscarPersona(@PathVariable("id") Long id){
		Optional<Persona> persona = personaRepository.findById(id);
		
		return persona;
	}

	@RequestMapping("api/personas/eliminar/{id}")
	public String eliminarPersona(@PathVariable("id") Long id) {
		personaRepository.deleteById(id);
		return "Alumno eliminado";
	}
}



