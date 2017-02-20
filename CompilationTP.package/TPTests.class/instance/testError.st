tests
testError
	self
		assert: (self parse: '  x') errorStream contents = 'position:3: SmaCCParserError: Token not expected'