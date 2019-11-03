import Persona.*

class Aleman inherits Persona {
	
	override method meGusta(cerveza){
		return true
	}
	
	override method quieroEntrar(carpa){
		return super(carpa) and carpa.limite() % 2 == 0
	}
	
	override method esPatriota(){
		return jarras.all{jar=>jar.marca().paisFabric() == "Alemania"}
	}
	
}
