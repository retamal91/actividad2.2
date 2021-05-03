package com.everis.actividad.controllers;

import java.util.List;
import java.util.Optional;


import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ModelAttribute;
import com.everis.actividad.models.Persona;
import com.everis.actividad.services.PersonaService;

@Controller
public class PersonaController {
	
	@Autowired
	PersonaService personaService;
	
	@RequestMapping("/personas")
	public String personas(@RequestParam(value="rut") String rut,
			@RequestParam(value="nombre") String nombre,
			@RequestParam(value="apellido") String apellido,
			@RequestParam(value="email")String email,Model model){
		
		Persona persona = new Persona();
		persona.setRut(rut);
		persona.setNombre(nombre);
		persona.setApellido(apellido);
		persona.setEmail(email);
		
		persona = personaService.savePersona(persona);
		
		List<Persona> personas_lista = personaService.allPersonas();
		model.addAttribute("personas", personas_lista);
		
		return "index.jsp";
	}
	
	@RequestMapping("/personas/eliminar/{id}")
	public String deletePersona(@PathVariable ("id") Long id) {
		personaService.deleteById(id);
		return "redirect:/";
	}
	@RequestMapping("/personas/editar/{id}")
	public String editarPersona(@PathVariable("id") Long id, Model model) {
		Optional<Persona> persona = personaService.findById(id);
		model.addAttribute("persona",persona);
		return "editar.jsp";
	}
	
	@RequestMapping("/personas/actualizar/")
	public String actualizarPersona(@Valid @ModelAttribute("persona") Persona persona) {
		personaService.actualizarPersona(persona);
		return "redirect:/";
	}

}
