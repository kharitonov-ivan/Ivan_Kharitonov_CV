\ProvidesClass{resume}[]

% Set up the fonts according to options
\def\mainfontsize{11pt}
\def\mainfontface{Times New Roman}

% Set up papersize according to options
\def\papersize{a4paper}

\LoadClass[\papersize,\mainfontsize]{extarticle}

% Packages
\RequirePackage[left=0.5in, right=0.5in,top=0.5in, bottom=0.5in]{geometry}
\RequirePackage{array, xcolor, titling, enumitem , hyperref, titlesec, etoolbox, ulem}

% Disable page numbering
\pagenumbering{gobble}

% Font and Layout
\linespread{1.1}
\setlength{\parskip}{0.7em}
\setlength{\parindent}{0.5em}

% Hyperlinks setup
\hypersetup{colorlinks=true, urlcolor=blue, urlbordercolor=cyan}

% Section format
\titlespacing*{\section}{0pt}{0pt}{-5pt} % \titlespacing*{<command>}{<left>}{<before-sep>}{<after-sep>}
\newcommand*{\sectionformat}{\centering}

% New commands
\newcommand{\position}[3]{\noindent \uline{\textsc{#1} \hfill \textbf{#2} \hfill #3 \\}}
\newcommand{\ressubheading}[5]{\placeheadding{#1}{#2}{#3} \positionheading{#4}{#5} \\}

\newcommand{\project}[4]{%
	\noindent
	\ifstrempty{#1}{}{\textbf{#1}}% Project name
	\ifstrempty{#2}{}{\ifstrempty{#1}{}{\newline}\textit{Responsibilities:} {#2}}% Responsibilities
	\ifstrempty{#3}{}{\ifstrempty{#1}{\ifstrempty{#2}{}{\newline}}{\newline}\textit{Results:} #3}% Result
	\ifstrempty{#4}{}{\ifstrempty{#1}{\ifstrempty{#2}{\ifstrempty{#3}{}{\newline}}{\newline}}{\newline}\textit{Tech:} \textbf{#4}}% Technologies
}

% Table setup
\definecolor{lightgray}{gray}{0.65}
\newcolumntype{L}{>{\raggedright}p{0.875\textwidth}} % LEFT TABLE MARGIN
\newcolumntype{R}{p{0.125\textwidth}} % RIGHT TABLE MARGIN
\newcommand\VRule{\color{lightgray}\vrule width 0.5pt}