generated-reduction actions
reduceActionForFactor2: nodes
	^ self symbols
		at: (nodes at: 1) value
		ifAbsent: [ self
				error:
					'Unknown variable ' ,
						(nodes at: 1) value ]