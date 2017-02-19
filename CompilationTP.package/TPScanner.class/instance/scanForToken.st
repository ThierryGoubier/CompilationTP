generated
scanForToken
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(1).
			self step.
			currentCharacter == $.
				ifTrue: [ [ self recordMatch: #(1).
					self step.
					currentCharacter isDigit ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(2).
			self step.
			currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ] ] whileTrue ].
	^ self reportLastMatch