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
\RequirePackage{tgpagella}
\RequirePackage{inconsolata}

\RequirePackage{xcolor} % Farben

\RequirePackage[colorlinks=false, linkcolor=blue]{hyperref} % Hyperlinks (auch im Inhaltsverzeichnis)

\RequirePackage{multicol} % mehrere Spalten Text

\RequirePackage{listings} % für Codeblöcke
\lstdefinestyle{code}{
	commentstyle=\color{red},
	keywordstyle=\color{purple},
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

\RequirePackage{ulem} % Text Durchstreichen
\RequirePackage{cancel} % Mathe Durchstreichen

\RequirePackage{amsmath} % AMS TeX

% SI-Einheiten und mehr
\RequirePackage{siunitx}
\sisetup{
   output-decimal-marker = {,} % \num nutzt hiermit , als dezimalkomma
}

\RequirePackage{graphicx} % zum Einbinden von Bildern

