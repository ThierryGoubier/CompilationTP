accessing
parse
	| aValue |
	aValue := super parse.
	self exitStatus < 0
		ifFalse: [ exitStatus := aValue ].
	^ self