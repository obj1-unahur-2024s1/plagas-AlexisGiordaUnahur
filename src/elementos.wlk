import plagas.*
import barrios.*

class Hogar{
	var mugre
	var confort
	
	method esBueno() = mugre < confort*0.5
	method recibirAtaqueDe(unaPlaga){mugre+=unaPlaga.poblacion()}
}

class Huerta{
	var capacidadProduccion
	var nivelAdecuado
	
	method esBueno() = capacidadProduccion>nivelAdecuado
	method recibirAtaqueDe(unaPlaga){
		capacidadProduccion=capacidadProduccion*0.9 - if(unaPlaga.transmiteEnfermedad()) 10 else 0
	}
}

class Mascota{
	var salud
	
	method esBueno() = salud>250
	method recibirAtaqueDe(unaPlaga){
		salud= salud- if(unaPlaga.transmiteEnfermedad()) unaPlaga.nivelDanio() else 0
	}
}