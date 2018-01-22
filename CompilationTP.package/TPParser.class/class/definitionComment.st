generated
definitionComment
"<number>        :       [0-9]+ (\. [0-9]*) ? ;
<identifier> : [a-zA-Z_] [a-zA-Z_0-9]* ;
<whitespace>    :       \s+;

Line:
	Expression_Statement "";"" {'1'}
	| Print "";"" {'1'}
	;

Expression_Statement:
	<identifier> ""="" Expression { self symbols at: '1' value put: '3' }
	| Expression { '1' }
	;

Expression:
	Expression ""+"" Term  {'1' + '3'}
	| Expression ""-"" Term  {'1' - '3'}
	| Term { '1' }
	;
	
Term:
	Factor ""*"" Term {'1' * '3'}
	| Factor ""/"" Term {'1' // '3'}
	| Factor { '1' }
	;

Factor:
	Number {'1'}
	| Identifier { self symbols at: '1' value ifAbsent: [self error: 'Unknown variable ', '1' value ] }
	| ""("" Expression_Statement "")"" { '2' }
	;

Number:
	<number> {'1' value asNumber}
	;

Identifier:
	<identifier> {'1' value}
	;

Print:
	""print"" ""("" "")"" {self output: 'printing something'}
	;"