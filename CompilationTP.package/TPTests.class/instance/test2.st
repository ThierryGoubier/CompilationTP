tests
test2
	| p |
	p := self parse: self source2.
	self
		assert:
			(p outputStream contents = 'vraie
'
				or: [ p outputStream contents = 'fausse
' ])