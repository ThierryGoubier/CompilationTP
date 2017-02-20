generated
scanForTokenX2
	[ self recordMatch: #(10).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue