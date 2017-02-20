generated
definitionComment
"<number>        :       [0-9]+ (\. [0-9]*) ? ;

<whitespace>    :       \s+;

Line:
	Expression {'1'}
	| Print {'1'}
	;

Expression:
	Expression Expression ""+"" {'1' + '2'}
	| Expression Expression ""-"" {'1' - '2'}
	| Expression Expression ""*"" {'1' * '2'}
	| Expression Expression ""/"" {'1' // '2'}
	| Number {'1'}
	;

Number:
	<number> {'1' value asNumber}
	;

Print:
	""print"" ""("" "")"" {self output: 'printing something'}
	;"