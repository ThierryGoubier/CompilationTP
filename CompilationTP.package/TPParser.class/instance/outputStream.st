accessing
outputStream
	^ outputStream ifNil: [ outputStream := WriteStream on: String new ]