generated
scanForTokenX3
	[ self recordMatch: #(12).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch