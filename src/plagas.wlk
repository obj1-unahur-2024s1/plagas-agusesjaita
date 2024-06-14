class Plaga {
	var property poblacion = 0
	
	method transmiteEnfermedad() = poblacion >= 10
	
	method atacarA(elemento) {
		poblacion = poblacion + (poblacion * 0.1)
		elemento.recibirAtaque(self)
	}
}

class Cucarachas inherits Plaga {
	var property pesoPromedio = 0
	
	override method transmiteEnfermedad() = super() and pesoPromedio >= 10
	
	method nivelDePeligro() = poblacion / 2
	
	override method atacarA(elemento) {
		super(elemento)
		pesoPromedio = pesoPromedio + 2
	}
}

class Mosquitos inherits Plaga {
	
	override method transmiteEnfermedad() = super() and poblacion % 3 == 0
	
	method nivelDePeligro() = poblacion 
}

class Pulgas inherits Plaga {
	
	method nivelDePeligro() = poblacion * 2
}

class Garrapatas inherits Pulgas {
	
	override method atacarA(elemento) {
	poblacion = poblacion + poblacion * 20
	}
}
