tests
test5
	| p |
	p := self parse: self source5.
	self assert: p exitStatus >= 0.
	self
		assert:
			(p outputStream contents
				=
					'La valeur de A est "vraie"
'
				or: [ p outputStream contents
						=
							'La valeur de A est "fausse"
' ])