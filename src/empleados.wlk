object galvan {
	var property sueldo = 150000
	var totalDinero = 0
	var totalDeuda = 0
	
	method totalDeuda() = totalDeuda
	method totalDinero() = totalDinero
	method pagarDeuda() {
		if(totalDinero >= totalDeuda){
			totalDinero -= totalDeuda
			totalDeuda = 0
		}
		
		else {
			totalDeuda -= totalDinero
			totalDinero = 0
		}
	}
	method gastar(cuanto) {
		totalDeuda += cuanto
		self.pagarDeuda()
	}
	method cobrarSueldo() {
		totalDinero += sueldo
		self.pagarDeuda()
	}
}

object baigorria{
	var cantidadDeEmpanadasVendidas = 1000
	var sueldo = 150*cantidadDeEmpanadasVendidas
	var totalCobrado = 0
	
	method sueldo() = sueldo
	method totalCobrado() = totalCobrado
	method cobrarSueldo() {
		totalCobrado += sueldo
	}
}