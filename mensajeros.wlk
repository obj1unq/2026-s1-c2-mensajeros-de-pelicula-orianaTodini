object paquete {
  var mensajero  = jeanGray
  var destino = laMatrix
  var estaPago = false 
  method destinoPaquete(_destino) {
	destino = _destino 
  }
  method persona(_persona) {
	mensajero = _persona
  }
  method pagar() {
     estaPago= true
  }
  method puedeSerEntregado() {
	return estaPago && destino.dejarPasar(mensajero)
  }
  
}

object laMatrix {
  method dejarPasar(mensajero) {
	return mensajero.puedeLlamar()
  }
}
object puenteDeBrooklyn {
  method dejarPasar(mensajero) {
	return mensajero.pesoActual() <= 1000
  }
}
object jeanGray {
	method puedeLlamar() {
	  return true
	}
  method peso() {
	return 65 
  }
}

object neo {
	var tieneCredito = false 
  method peso() {
	return 0 
  }
  method puedeLlamar(){
	return tieneCredito
  }
  method credito() {
	tieneCredito= true
  }
}

object saraConnor {
  var peso= 0
  var vehiculo = camion  
  method peso(_peso) {
	peso= _peso 	
  }
  method vehiculo(_vehiculo) {
	vehiculo= _vehiculo
  }
  method pesoActual () {
	return peso+ vehiculo.peso()
  }
  method puedeLlamar() {
	return false
  }

}

object camion {
  var cantidadDeAcoplados = 0  
 method peso() { 
  return self.pesoPropio() + self.pesoPorAcoplados()}

  method cantidadDeAcoplados(cantidad){
	cantidadDeAcoplados =  cantidad
  }
  method pesoPropio() {
    return 500
  }
  method pesoPorAcoplados() {
    return self.pesoPropio() * cantidadDeAcoplados
  }
}

object moto {
  method peso() {
	return 100
  }
}


