\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{myletter}[2026/05/15 Brief auf DIN-A4 Papier]

\LoadClass{mytext}

% Papierformatierung
\RequirePackage[
	left=25mm,
	right=30mm,
	top=15mm,
	bottom=25mm,
	paper=a4paper
]{geometry}

% Absatzformatierung Überschreiben
\setlength{\parindent}{0pt}
\setlength{\parskip}{12pt}

% Standard-Optionen
\providecommand\lettertitle{Betreff}
\providecommand\place{\relax}
\providecommand\letterdate{\today}
\providecommand\greet{Werter Genosse,}
\providecommand\bye{Rotfront!}
\providecommand\myname{Max Mustermann}
\providecommand\myaddra{BRD GmbH}
\providecommand\myaddrb{Musterstraße 0b}
\providecommand\myaddrc{12345 Musterstadt}
\providecommand\myaddrd{z.B. E-Mail Adresse} % nicht in Rücksendeadresse
\providecommand\myaddre{z.B. Telefonnummer} % nicht in Rücksendeadresse
\providecommand\toname{Otto Normal}
\providecommand\toaddra{Personalabteilung}
\providecommand\toaddrb{Post AG}
\providecommand\toaddrc{Sendeweg 0}
\providecommand\toaddrd{99999 Musterfurt}
\providecommand\toaddre{}
% Delimiter (werden automatisch Geändert)
\providecommand\placedatedelim{}
\providecommand\namedatedelim{, }
\providecommand\backaddrdelim{; }

% Optionen Setzen
\newcommand\setlettertitle[1]{\renewcommand\lettertitle{#1} \title{#1}}
\newcommand\setplace[1]{\renewcommand\place{#1} \renewcommand\placedatedelim{, }}
\newcommand\setletterdate[1]{\renewcommand\letterdate{#1} \renewcommand\namedatedelim{\if\relax\detokenize{#1}\relax\else, \fi} \date{#1}}
\newcommand\setgreet[1]{\renewcommand\greet{#1}}
\newcommand\setbye[1]{\renewcommand\bye{#1}}
\newcommand\setmyname[1]{\renewcommand\myname{#1} \author{#1}}
\newcommand\setmyaddra[1]{\renewcommand\myaddra{#1}}
\newcommand\setmyaddrb[1]{\renewcommand\myaddrb{#1}}
\newcommand\setmyaddrc[1]{\renewcommand\myaddrc{#1} \renewcommand\backaddrdelim{\if\relax\detokenize{#1}\relax\else; \fi}}
\newcommand\setmyaddrd[1]{\renewcommand\myaddrd{#1}}
\newcommand\setmyaddre[1]{\renewcommand\myaddre{#1}}
\newcommand\settoname[1]{\renewcommand\toname{#1}} % toaddra comes before toname
\newcommand\settoaddra[1]{\renewcommand\toaddra{#1}}
\newcommand\settoaddrb[1]{\renewcommand\toaddrb{#1}}
\newcommand\settoaddrc[1]{\renewcommand\toaddrc{#1}}
\newcommand\settoaddrd[1]{\renewcommand\toaddrd{#1}}
\newcommand\settoaddre[1]{\renewcommand\toaddre{#1}}
% zusätzlicher Befehl zum Ändern der Signatur
\newcommand\siginstead[2]{\renewcommand\myname{#1} \renewcommand\letterdate{#2} \renewcommand\namedatedelim{}}

% Brief Gesamte Kopfzeile mit Daten aus Variablen
\newcommand{\letterhead}{
	\begin{document}
	\letterme{\myname}{\myaddra}{\myaddrb}{\myaddrc}{\myaddrd}{\myaddre}
	\letterbackadress{\myname}{\myaddra}{\myaddrb}{\myaddrc}
	\letteradress{\toaddra}{\toname}{\toaddrb}{\toaddrc}{\toaddrd}{\toaddre}
	\letterstart{\place}{\letterdate}{\lettertitle}{\greet}
}

\newcommand{\letterfoot}[1]{
	\if\relax\detokenize{#1}\relax
		\letterend{\bye}{\myname}{\letterdate}
	\else
		\lettersig{\bye}{\myname}{\letterdate}{#1}
	\fi
}

% Eigene Kontaktdaten
\newcommand{\letterme}[6]{
	\begin{flushright}
		{\setlength{\tabcolsep}{0mm}
		\begin{tabular}{r}
		\textbf{#1} \\
		#2 \\
		#3 \\
		#4 \\
		#5 \\
		#6 \\
		\end{tabular}
		}
	\end{flushright}
	\hrule \bigskip
}

% Rücksendeadresse
\newcommand{\letterbackadress}[4]{
	\underline{\scriptsize #1; #2; #3\backaddrdelim #4} \\\\
}

% Adresse
\newcommand{\letteradress}[6]{
	\textbf{#1} \\
	#2 \\
	#3 \\
	#4 \\
	#5 \\
	#6 \\\\
}

% Ort, Datum, Betreff und Anrede
\newcommand{\letterstart}[4]{
	\begin{flushright}
	#1\placedatedelim #2\medskip
	\end{flushright}
	{\large\textbf{\underline{#3}}} \\\\\\
	#4
}

% Grußformel und Signaturenfeld
\newcommand{\letterend}[3]{
	#1 \\
	\vspace{0.5cm} \\
	\rule{7cm}{0.4pt} \\[7pt]
	{\normalsize #2\namedatedelim #3}\\\\
}

% Alternativ: Grußformel und Signatur als Bild
\newcommand{\lettersig}[4]{
	#1 \\[10pt]
	\includegraphics[width=5cm]{#4} \\[-25pt]
	\rule{7cm}{0.4pt} \\[10pt]
	{\normalsize #2\namedatedelim #3}\\\\
}

\RequirePackage{eso-pic} % Shipout-Hooks, damit TikZ Grafiken auf die Seite gezeichnet werden können
\newcommand{\letterfoldmarks}[1]{
	\AddToShipoutPictureBG{
		\AtPageUpperLeft{
			\raisebox{-99mm}{\color{gray} \rule{3mm}{0.2pt}}
		}
		\AtPageUpperLeft{
			\raisebox{-198mm}{\color{gray} \rule{3mm}{0.2pt}}
		}
	}
}

