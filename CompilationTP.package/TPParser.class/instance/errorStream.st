accessing
errorStream
	^ errorStream ifNil: [ errorStream := WriteStream on: String new ]