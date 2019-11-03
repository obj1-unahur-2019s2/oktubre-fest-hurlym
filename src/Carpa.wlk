import Jarra.*

class Carpa {
	
	var property limite = 0
	var property musica
	var property marca	
	const property personas = []
	const property recargo
	
	//PUNTO 6
	method admitePersona(persona){
		return self.hayLugar() and not persona.estaEbria()
	}
	
	method hayLugar(){
		return limite > personas.size()
	}
	
	//PUNTO 8
	method entradaPersona(persona){
		if(not self.admitePersona(persona)){
			self.error("No se admite a la persona en la carpa")
		}
		else{
			personas.add(persona)
		}
	}
	
	method estaEnLaCarpa(persona){
		return personas.contains(persona)
	}
	
	//PUNTO 9
	method servirCerveza(persona){
		if(self.estaEnLaCarpa(persona))
		{
			//CREO EL OBJETO JARRA. LO QUE NO SE ES EL TAMAÑO COMO SETEARLO SEGUN PREFERENCIA. SE PUEDE PASAR OTRO PARAMETRO
			//AL METODO?
			var miJarra = new Jarra()
			miJarra.capacidad(0.5)
			miJarra.marca(marca)
			miJarra.servidaEn(self)
			miJarra.precioVenta(self.precioVenta() * miJarra.capacidad())
			persona.beber(miJarra)
		
		}
	}
	
	//PUNTO 10
	method cuantosEbriosEmpedernidosHay(){
		//NO SE SI ES CORRECTA ESTA CONSULTA
		return personas.sum{perso=>perso.jarras().all{jar=>jar.capacidad()>=1}}
	}
	
	//PUNTO 13
	/*
	 * method esHomogenea(){
		return personas.all{perso=>perso.}
	}
	 */
	 
	 //PUNTO 15
	 method noSeLesSirvioCervezaAca(){
	 	return personas.filter({perso=>perso.jarras().all{jar=>jar.servidaEn() != self}})
	 }
	 
	 //BONUS
	 
	 method precioVenta(){
	 	if(recargo == "fijo")
	 	{
	 		return marca.precioPorLitro() * 1.3
	 	}
	 	else if(recargo == "cantidad"){
	 		if(personas.size() >= limite/2){
	 			return marca.precioPorLitro() * 1.4
	 		}
	 		else
	 		{
	 			return marca.precioPorLitro() * 1.25
	 		}
	 	}
	 	else if(recargo == "ebriedad"){
	 		if(self.porcDeBorrachos() >= 75){
	 			return marca.precioPorLitro() * 1.5
	 		}
	 		else
	 		{
	 			return marca.precioPorLitro() * 1.2
	 		}
	 	}
	 	
	 	return 0
	 }
	 
	 method cantDeBorrachos(){
	 	return personas.sum{perso=>perso.estaEbria()}
	 }
	 
	 method porcDeBorrachos(){
	 	return (self.cantDeBorrachos() * 100) / personas.size()
	 }
	
	
}
