% Intro Options
\ProvidesClass{deedy-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{color}
\usepackage{enumitem}
\usepackage[explicit,raggedright]{titlesec}
\usepackage{tabularx}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{hyperref}
\hypersetup{
	colorlinks=true,				% false: boxed links; true: colored links
	linkcolor=green,			% color of internal links (change box color with linkbordercolor)
	citecolor=green,			% color of links to bibliography
	filecolor=green,				% color of file links
	urlcolor=blue,				% color of external links
}

% Cite publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{5db7d3}
\definecolor{subheadings}{HTML}{525252}
\definecolor{location}{HTML}{595959}
\definecolor{descriptcolor}{HTML}{222222}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont{Arial}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Arial}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(155,0)
\color{date}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

% Custom commands
\newcommand{\MYhref}[3][blue]{\href{#2}{\color{#1}{#3}}}%

\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\newcommand*\ruleline[1]{\par\noindent\raisebox{.5ex}{\makebox[\linewidth]{\hrulefillthick\hspace{1ex}\raisebox{-.5ex}{#1}\hspace{1ex}\hrulefillthick}}}
\newcommand*\centeredruleline[1]{\par\noindent\raisebox{.5ex}{\makebox[\linewidth]{\raisebox{-.5ex}{#1}\hspace{1ex}\hrulefillthick}}}
\def\hrulefillthick{\leavevmode\leaders\hrule height 2pt\hfill\kern\z@}
\titleformat{\section}[display]
{\filcenter\Large\sffamily\color{white}}
{}
{0pt}
{{
	\color{gold}
	\ruleline{\colorbox{navy}{\centering\parbox[c][1.5em]{50mm}{\centering{\color{white}#1}}}}
}}
\titlespacing\section{0pt}{0pt}{-10pt}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}\Large\bfseries\filright}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{{\rule{0pt}{2\baselineskip}\color{subheadings}\Large\textbf{#1}}}
  
% Descriptors command
\newcommand{\descript}[1]{{\color{descriptcolor}\raggedright\scshape\Large{#1 \\}}}

% Location command
\newcommand{\location}[1]{{\color{location}\raggedright\scshape\large{\setlength{\parindent}{1em}\setlength{\hangindent}{1em} #1\\}}}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}
\setlist[itemize]{leftmargin=1em}


