class Persona {
	var property peso
	const property jarras = []
	var property gustaMusicaTradic
	var property nivelAguante = 0
	var property meGusta
	var property esPatriota
	var contador = 0 
	
	
	method estaEbria(){
		return (self.cantidadAlcholIngerido() * peso) > nivelAguante
	}
	
	method cantidadAlcholIngerido(){
		return jarras.sum{jarra=>jarra.contenidoAlcohol()}
	}
	
	method beber(cerveza){
		jarras.add(cerveza)
	}
	
	//PUNTO 5
	method quieroEntrar(carpa){
		return (self.meGusta(carpa.marca())) and (self.gustaMusicaTradic() == carpa.musica())
	}
	
	//PUNTO 7
	method puedoEntrar(carpa){
		return self.quieroEntrar(carpa) and carpa.admitePersona(self)
	}
	
	method personasCompatibles(persona){
		
	}
	
	/*
	 * method coincidenciasDeCervezas(){
		return 
	}
	
	method listaMarcas(persona){
		return (persona.jarras().filter({jar=>jar.marca()}))
		
	}
		
	 */
	 
	 //PUNTO 16
	 
	 method estaEntrandoEnElVicio(){
	 	
	 	return jarras.all{jar=>self.esMayor(jar.capacidad())}
	 		
	 	}
	 	
	 	
	 method esMayor(num){
	 	
	 	if(contador < num)
	 	{
	 		contador = num
	 		return true
	 	}
	 	else
	 	{
	 		return false
	 	}
	 }
	 
	 //BONUS
	 method gastoTotalEnCerveza(){
	 	return jarras.sum{jar=>jar.precioVenta()}
	 }
	 
	 //NO SE SI ES CORRECTO LA SIGUIENTE SINTAXIS
	 method cervezaMasCara(){
	 	return jarras.max({jar=>jar.precioVenta()})
	 }
	 
	 
	
	
	
	
	
}
