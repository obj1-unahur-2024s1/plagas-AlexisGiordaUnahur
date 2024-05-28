import elementos.*
import barrios.*

class Plaga{
	var property poblacion
	
	method transmiteEnfermedad() = poblacion>10
	method atacarA(unElemento){
		unElemento.recibirAtaqueDe(self)
		poblacion = poblacion*1.1
	}
}

class PlagaCucarachas inherits Plaga{
	var property pesoPromedio
	
	method nivelDanio() = poblacion*0.5
	override method transmiteEnfermedad() = super() and pesoPromedio>10
	override method atacarA(unElemento){
		super(unElemento)
		pesoPromedio += 2
	}
}

class PlagaPulgas inherits Plaga{
	method nivelDanio() = poblacion*2
}

class PlagaGarrapatas inherits PlagaPulgas{
	override method atacarA(unElemento){
		poblacion = poblacion*1.2
	}
}

class PlagaMosquitos inherits Plaga{
	method nivelDanio() = poblacion
	override method transmiteEnfermedad() = super() and (poblacion%3==0)
}