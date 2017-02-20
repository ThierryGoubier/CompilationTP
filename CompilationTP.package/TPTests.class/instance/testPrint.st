tests
testPrint
	self
		assert:
			(self parse: 'print();') outputStream contents
				= 'printing something'