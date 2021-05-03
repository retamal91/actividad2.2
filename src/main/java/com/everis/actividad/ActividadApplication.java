package com.everis.actividad;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.everis.actividad.util.Validaciones;

@SpringBootApplication
public class ActividadApplication {

	public static void main(String[] args) {
		SpringApplication.run(ActividadApplication.class, args);
		
		
		boolean rut = Validaciones.validarRut("19.638.065-5");
		
		System.out.println(rut);
	}


}
