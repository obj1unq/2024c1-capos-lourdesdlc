import capos.*
import castillo.*

object espadaDelDestino {
	var primeraVez = true
	method poder(personaje){
		return personaje.poderBase() * self.coeficiente()
	}
	method usar(){
		primeraVez = false
	}
	method coeficiente(){
		return if(primeraVez){1}else{0.5}
	}
}
object libroDeHechizos{
	var property hechizos = []
	
	method poder(personaje){
		return if (not hechizos.isEmpty()) {
			hechizos.first().poder(personaje)
		}else{
			0
		}
	}
	method usar(){
		if (not hechizos.isEmpty()){
			hechizos.remove(hechizos.first())
		//hechizos = hechizos.drop(1) a lo funcional
		}		
	}
}
object collarDivino {
	var usos = 0
	method poder(personaje){
		return 3 + self.extra(personaje)
	}
	method usar(){
		usos += 1
	}	
	method extra(personaje){
		return if (personaje.poderBase() > 6){usos}else{0}
	}
	method cantidadDeUsos(){
		return usos
	}
}
object armaduraDeAceroValyrio{
	method poder(personaje){
		return 6
	}
	method usar(){
		
	}	
}
//HECHIZOS
object bendicion {
	method poder(personaje){
		return 4
	}
}
object invisibilidad {
	method poder(personaje){
		return personaje.poderBase()
	}
}
object invocacion {
	method poder(personaje){
		return personaje.poderInvocacion()
	}
}