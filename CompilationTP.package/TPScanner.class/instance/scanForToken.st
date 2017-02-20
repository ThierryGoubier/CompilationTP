generated
scanForToken
	self step.
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $/
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $p
		ifTrue: [ (self scanForString: 'rint')
				ifTrue: [ ^ self recordAndReportMatch: #(7) ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scanForTokenX1 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ self scanForTokenX2 ].
	^ self reportLastMatch