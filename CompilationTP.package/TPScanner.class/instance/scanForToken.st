generated
scanForToken
	self step.
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $/
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $p
		ifTrue: [ (self scanForString: 'rint')
				ifTrue: [ ^ self recordAndReportMatch: #(6) ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(8).
			self step.
			currentCharacter == $.
				ifTrue: [ [ self recordMatch: #(8).
					self step.
					currentCharacter isDigit ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(9).
			self step.
			currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ] ] whileTrue ].
	^ self reportLastMatch