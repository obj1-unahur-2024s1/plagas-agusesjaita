class Hogar {
	var property nivelDeMugre = 0
	var property confort = 0
	
	method esBueno() = nivelDeMugre <= confort / 2
	
	method recibirAtaque(plaga) {nivelDeMugre = nivelDeMugre + plaga.nivelDePeligro()}
}

class Huerta {
	var property nivel = 50 
	var property capacidadProduccion = 0
	
	method esBuena() = capacidadProduccion > 50
	
	method recibirAtaque(plaga) {capacidadProduccion = capacidadProduccion - 
								 (if (plaga.transmiteEnfermedad()) 10 + plaga.nivelDePeligro() * 0.1 else 
																 plaga.nivelDePeligro() * 0.1)}
}

class Mascota {
	var property nivelDeSalud = 0
	
	method esBuena() = nivelDeSalud > 250
	
	method recibirAtaque(plaga) {nivelDeSalud = nivelDeSalud - (if (plaga.transmiteEnfermedad()) plaga.nivelDePeligro() else 0)}
}

class Barrio {
	const elementos = []
	
	method agregarElementos(lista) = elementos.addAll(lista)
	
	method esBueno(elemento) = elemento.esBuena()
	
	method esCopado() = elementos.count({elemento => elemento.esBueno()}) > 
	elementos.count({elemento => not elemento.esBueno()})
}
