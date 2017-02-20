tests
test3
	| p |
	p := self parse: self source3.
	self assert: p exitStatus = 23