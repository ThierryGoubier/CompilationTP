baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec package: 'CompilationTP'.
			spec
				baseline: 'SmaCC'
				with: [ spec repository: 'github://ThierryGoubier/SmaCC' ] ]