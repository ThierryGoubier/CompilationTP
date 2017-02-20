tests
test6
	| p |
	p := self parse: self source6.
	self assert: p exitStatus = -1.
	self
		assert:
			(p errorStream contents
				matchesRegex: '.*SmaCCParserError\: Token not expected') not