return {
	s({trig="eq", dscr="A LaTeX equation environment"},
	  fmt(
		[[
		  \begin{equation}
			  <>
		  \end{equation}
		]],
		{ i(1) },
		{ delimiters = "<>" }
	  )
	),
	s({trig="eq*", dscr="A LaTeX unnumbered equation environment"},
	  fmt(
		[[
		  \begin{equation*}
			  <>
		  \end{equation*}
		]],
		{ i(1) },
		{ delimiters = "<>" }
	  )
	),
	s({trig="fig", dscr="A LaTeX figure environment"},
	  fmt(
		[[
		  \begin{figure}
		  	\centering
			  <>
			\caption{<>}
			\label{fig:<>}
		  \end{figure}
		]],
		{ i(1), i(2), i(3) },
		{ delimiters = "<>" }
	  )
	),
	s({trig="tab", dscr="A LaTeX table environment"},
	  fmt(
		[[
		\begin{table}
		  	\centering
			<>
			\caption{<>}
			\label{tab:<>}
		\end{table}
		]],
		{ i(1), i(2), i(3) },
		{ delimiters = "<>" }
	  )
	),
	s({trig="tabular", dscr="A LaTeX tabular"},
	  fmt(
		[[
		\begin{tabular}{|<>|}
		\hline
		<> & \\
		\hline
		<> & \\
		\hline
		\end{tabular}
		]],
		{ i(1), i(2), i(3) },
		{ delimiters = "<>" }
	  )
	),
	s({trig="item", dscr="A LaTeX itemize environment"},
	  fmt(
		[[
		\begin{itemize}
			\item <>
		\end{itemize}
		]],
		{ i(1) },
		{ delimiters = "<>" }
	  )
	),
	s({trig="enum", dscr="A LaTeX enumerate environment"},
	  fmt(
		[[
		\begin{enumerate}
			\item <>
		\end{enumerate}
		]],
		{ i(1) },
		{ delimiters = "<>" }
	  )
	),
}
