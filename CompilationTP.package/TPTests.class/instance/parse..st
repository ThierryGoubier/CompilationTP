private
parse: aString
	| aParser |
	aParser := TPParser on: (ReadStream on: aString).
	aParser setStartingState: TPParser defaultStartingState.
	^ [ aParser parse ]
		on: SmaCCParserError
		do: [ :ex | 
			aParser
				outputError: 'position:' , ex tag position printString , ': ' , ex description ]