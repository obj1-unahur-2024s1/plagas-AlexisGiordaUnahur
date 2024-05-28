import elementos.*
import plagas.*

class Barrio{
	var property elemento = []
	
	method esCopado(){
		const elemBuenos = elemento.count({e=>e.esBueno()})
		const elemMalos = elemento.count({e=>not e.esBueno()})

		return elemBuenos>elemMalos
	}
}