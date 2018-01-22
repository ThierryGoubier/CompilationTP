generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(11 'print' 3))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap