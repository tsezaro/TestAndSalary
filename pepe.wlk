object pepe {
	var sueldo = 0
	var property categoria
	var property faltas = 0
	var property tipoDeBonoPresentismo
	var property tipoDeBonoResultado 
	
	
	method sueldo(){
		sueldo = categoria.neto() + self.bonoPorPresentismo(tipoDeBonoPresentismo) + self.bonoPorResultado(tipoDeBonoResultado)
		
		}
	method consultarSueldo(){
		return sueldo
	}
	
	method bonoPorResultado(tipoDeBono){
		return tipoDeBono.bono(categoria)
		
		}

	method bonoPorPresentismo(tipoDeBono){
		return tipoDeBono.bono(faltas)
	}

}

object cadete{
	method neto() = 20000
	
}

object gerente{
	method neto() = 15000
	
}

object normal{
	
	method bono(faltas){
		if(faltas == 0){
			return 2000
		}
		else if(faltas == 1){
			return 1000
		}
		else{
			return 0
		}
	}
	
}
object ajuste{
	
	method bono(faltas){
		if(faltas == 0){
			return 100
		}else{
			return 0 
		}
	}
	
}
object demagogico{
	var sueldoNeto
	
	method sueldoNeto(categoria){
		sueldoNeto = categoria.neto()
	}
	
	method bono(faltas){
		if(sueldoNeto < 18000){
			return 500
		}
		else{
			return 300
		}
	}
	
	
}
object nulo{
	
	method bono(categoriaOFaltas) = 0
	
}


object porcentaje{
	
	method bono(categoria){
		return categoria.neto() * 0.1
	}
	
	
}
object montoFijo{
	
	method bono(categoria) = 800
	
}



