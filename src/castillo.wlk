object castilloDePiedra {
	var property baul = #{}
	
	method guardarTodosLosArtefactos(artefactos){
		baul.addAll(artefactos)
	}
	method poderInvocacion(personaje){ 
		return if(not baul.isEmpty()){
			self.masPoderoso(personaje).poder(personaje)
		}else{
			0
		}
		//una mejor opcion que convierte todos los artefactos en su poder(un num) 
		//y elige el mas grande, si la lista es vacia, devuelve 0
		//return baul.map({artefacto => artefacto.poder(personaje)}).maxIfEmpty(0)
	}
	method masPoderoso(personaje){
		return baul.max({artefacto => artefacto.poder(personaje)})
	}
}
