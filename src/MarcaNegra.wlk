import Marca.*
class MarcaNegra inherits Marca{
	
	//const property gradReglamentaria =10
	
	override method graduacionAlc(){
		
		return enteRegulador.graduacionReglamentaria().min(self.cantLupulo() * 2)
	}
	
}
