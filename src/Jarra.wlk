class Jarra {
	var property capacidad
	var property marca
	var property servidaEn
	var property precioVenta
	
	method contenidoAlcohol(){
		return capacidad * marca.graduacionAlc()
	}
}
