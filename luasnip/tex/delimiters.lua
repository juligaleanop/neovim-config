return {
	s({trig="bf", dscr="Expands 'bf' into '\textbf{}'"},
		fmt(
		"\\textbf{<>}",
		{ i(1) },
		{ delimiters = "<>" }
		)
	),
	s({trig="it", dscr="Expands 'it' into '\textit{}'"},
		fmt(
		"\\textit{<>}",
		{ i(1) },
		{ delimiters = "<>" }
		)
	),
	s({trig="sl", dscr="Expands 'sl' into '\textsl{}'"},
		fmt(
		"\\textsl{<>}",
		{ i(1) },
		{ delimiters = "<>" }
		)
	),
	s({trig="ff", dscr="Expands 'ff' into '\frac{}{}'"},
		fmt(
		"\\frac{<>}{<>}",
		{ i(1), i(2) },
		{ delimiters = "<>" }
		)
	),
}
