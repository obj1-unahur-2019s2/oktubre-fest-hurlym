import Persona.*
class Belga inherits Persona{
	
	override method meGusta(cerveza){
		return cerveza.cantLupulo() > 4
	}
	
	override method esPatriota(){
		return jarras.all{jar=>jar.marca().paisFabric() == "Belgica"}
	}
}
