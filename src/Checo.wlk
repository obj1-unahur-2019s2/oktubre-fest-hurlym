import Persona.*
class Checo inherits Persona{


	
	override method meGusta(cerveza){
		return cerveza.graduacionAlc() > 0.08
	}
	
	override method esPatriota(){
		return jarras.all{jar=>jar.marca().paisFabric() == "Republica Checa"}
	}
}
