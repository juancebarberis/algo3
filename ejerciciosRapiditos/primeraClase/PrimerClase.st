!classDefinition: #GuardiaDeSkyrim category: 'PrimerClase'!
DenotativeObject subclass: #GuardiaDeSkyrim
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GuardiaDeSkyrim class' category: 'PrimerClase'!
GuardiaDeSkyrim class
	instanceVariableNames: 'frasesParaResponder cantidadDeConversacionesQueTuve frases'!

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'AA 10/4/2020 22:46:26'!
contestar
	" Genera una respuesta "
	^self procesarRespuesta! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'AA 10/4/2020 22:46:10'!
conversar
	" Devuelve una frase correspondiente al Guardia "
	self recordarQueHablaronConmigo.
	^self contestar! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'AA 10/4/2020 22:48:01'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	frasesParaResponder := #('�Hola, forastero!!' '�No podr�as encantar mi espada?' 'Hueles como... a perro mojado' 'Ahora mismo estar�a mucho mejor con la panza llena de aguamiel' '�Has matado un drag�n? Ohhhh....' '�Atento a los cielos caminante!!' 'Te escucho ciudadano' ).
	cantidadDeConversacionesQueTuve := 0.
	frases := nil.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'AA 10/4/2020 22:44:35'!
procesarRespuesta
	" Devuelve la frase correspondiente a la cantidad de veces que ocurri� una conversaci�n.  "
	^frasesParaResponder at: (frasesParaResponder size min: cantidadDeConversacionesQueTuve)! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'AA 10/4/2020 22:43:32'!
recordarQueHablaronConmigo
	" Se encarga de actualizar la cantidad de veces que ocurre una conversaci�n.  "
	cantidadDeConversacionesQueTuve := cantidadDeConversacionesQueTuve + 1.! !

GuardiaDeSkyrim initializeAfterFileIn!