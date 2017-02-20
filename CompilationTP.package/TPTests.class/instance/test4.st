tests
test4
	| p |
	p := self parse: self source4.
	self assert: p exitStatus = -1.
	self
		assert:
			(p errorStream contents
				matchesRegex: '.*SmaCCParserError\: Token not expected') not