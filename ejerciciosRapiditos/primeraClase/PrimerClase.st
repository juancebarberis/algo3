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

	frasesParaResponder := #('¡Hola, forastero!!' '¿No podrías encantar mi espada?' 'Hueles como... a perro mojado' 'Ahora mismo estaría mucho mejor con la panza llena de aguamiel' '¿Has matado un dragón? Ohhhh....' '¡Atento a los cielos caminante!!' 'Te escucho ciudadano' ).
	cantidadDeConversacionesQueTuve := 0.
	frases := nil.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'AA 10/4/2020 22:44:35'!
procesarRespuesta
	" Devuelve la frase correspondiente a la cantidad de veces que ocurrió una conversación.  "
	^frasesParaResponder at: (frasesParaResponder size min: cantidadDeConversacionesQueTuve)! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'AA 10/4/2020 22:43:32'!
recordarQueHablaronConmigo
	" Se encarga de actualizar la cantidad de veces que ocurre una conversación.  "
	cantidadDeConversacionesQueTuve := cantidadDeConversacionesQueTuve + 1.! !

GuardiaDeSkyrim initializeAfterFileIn!