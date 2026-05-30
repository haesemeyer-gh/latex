\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{mytext}[2026/05/15 Basis-Klasse für alle meine Texte]

\LoadClass{article} % extends

% Indentierung, Abstand neuer Absätze und Zeilenabstand
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}
%\linespread{1.5}\selectfont % (oder in {})

% Schriftart und Eingabe Encodieren
% pdfLaTeX
%\RequirePackage[utf8]{inputenc}
%\RequirePackage[T1]{fontenc}
% LuaLaTeX
\RequirePackage{fontspec}

% Schriftarten
\RequirePackage{libertinus}
\RequirePackage{inconsolata}

% weitere Pakete und Kurzschreibweisen
\RequirePackage{myshorthands}

% Hyperlinks (auch im Inhaltsverzeichnis)
\RequirePackage[colorlinks=false, linkcolor=blue]{hyperref} % Hyperlinks (auch im Inhaltsverzeichnis)

% Mikrotypographie
\RequirePackage{microtype}

% Anführungszeichen
\RequirePackage[autostyle,german=quotes,english=american]{csquotes}

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

% genormtes Eurozeichen immer verwenden
\RequirePackage{eurosym}
\let\texteuro\officialeuro
% kompatibilität
\catcode`\€=\active
\def €{\officialeuro}

