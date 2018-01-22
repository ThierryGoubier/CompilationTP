generated
scanForTokenX4
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $/
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	(currentCharacter between: $0 and: $9)
		ifTrue:
			[ ^ self scanForTokenX2 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX3 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue:
			[ self scanForTokenX1 ].
	^ self reportLastMatch