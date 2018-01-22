generated
scanForTokenX2
	[ self recordMatch: #(10).
	self step.
	currentCharacter == $.
		ifTrue: [ [ self recordMatch: #(10).
			self step.
			currentCharacter between: $0 and: $9 ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter between: $0 and: $9 ] whileTrue.
	^ self reportLastMatch