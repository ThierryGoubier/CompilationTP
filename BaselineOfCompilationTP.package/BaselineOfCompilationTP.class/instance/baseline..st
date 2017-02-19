baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				baseline: 'SmaCC'
				with: [ spec repository: 'github://ThierryGoubier/SmaCC' ].
			spec import: 'SmaCC'.
			spec package: 'CompilationTP' with: [ spec requires: 'Tools' ] ]