\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{mycv}[2026/05/15 Lebenslauf auf DIN-A4 Papier]

\LoadClass{mytext}

% Papierformatierung
\RequirePackage[
	left=25mm,
	right=25mm,
	top=20mm,
	bottom=10mm,
	paper=a4paper
]{geometry}

% Seitenzahlen deaktivieren
\pagenumbering{gobble}

% Titelanzeige
\newcommand{\cvstart}[1]{
	\begin{document}
	\sffamily
	\begin{center}
		{\huge\bfseries #1}
	\end{center}
}

% Sektionen
\newcommand{\cvsection}[1]{
	\section*{
		\LARGE #1 \\[-15pt]
		\rule{\textwidth}{2pt} \\[-35pt]
	}
}

% Tabellen formatiert für Lebenslauf
\newcommand{\cvtable}[1]{
	\begin{table}[H] % placement specifier
		\raggedleft
		\large
		\def\arraystretch{1.5} % vertical padding
		\begin{tabular}{>{\itshape}p{0.35\linewidth}p{\linewidth}}
			#1 \\[-30pt]
		\end{tabular}
	\end{table}
}

% Itemizations mit wenig Abstand für Tabellen
\newcommand{\cvitemize}[1]{
	\begin{itemize}
		\setlength\itemsep{-0.2em}
		#1
	\end{itemize}
}

% Signatur
\newcommand{\cvsig}[2]{
	\begin{flushright}
		\vspace{0.5cm}
		\rule{7cm}{0.4pt} \\[7pt]
		{\normalsize\bfseries #1} \\
		{\small #2}
	\end{flushright}
	\end{document}
}

% Altlernativ: Signatur mit Bild
\newcommand{\cvsigimg}[3]{
	\begin{flushright}
		\includegraphics[width=5cm]{#3} \\[-25pt]
		\rule{7cm}{0.4pt} \\[10pt]
		{\normalsize\bfseries #1} \\
		{\small #2}
	\end{flushright}
	\end{document}
}

