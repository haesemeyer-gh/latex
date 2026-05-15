\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{mytext}[2026/05/15 Basis-Klasse für alle meine Texte]

\LoadClass{article} % extends

% Indentierung und Abstand neuer Absätze
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}

% Schriftart und Eingabe Encodieren
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

% Schriftarten
\RequirePackage{libertinus}
\RequirePackage{inconsolata}

% weitere Pakete und Kurzschreibweisen
\RequirePackage{myshorthands}

% Hyperlinks (auch im Inhaltsverzeichnis)
\RequirePackage[colorlinks=false, linkcolor=blue]{hyperref} % Hyperlinks (auch im Inhaltsverzeichnis)

% Codeblöcke
\RequirePackage{listings}
\lstdefinestyle{code}{
	commentstyle=\color{red},
	keywordstyle=\color{purple}\bfseries,
	numberstyle=\color{darkgray},
	stringstyle=\color{teal},
	basicstyle=\ttfamily\footnotesize,
	breaklines=true,
	numbers=left,
	numbersep=10pt,
	xleftmargin=2em,
	tabsize=2
}
\lstset{style=code}

% SI-Einheiten und mehr
\RequirePackage{siunitx}
\sisetup{
   output-decimal-marker = {,} % \num nutzt hiermit , als dezimalkomma
}

