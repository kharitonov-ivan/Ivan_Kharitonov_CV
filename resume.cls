\ProvidesClass{resume}[]

% Set up the fonts according to options
\def\mainfontsize{11.5pt}
\def\mainfontface{Times New Roman}

% Set up papersize according to options
\def\papersize{a4paper}

\LoadClass[\papersize,\mainfontsize]{extarticle}

% Packages
\RequirePackage[left=0.75in, right=0.75in, top=0.75in, bottom=0.75in]{geometry}
\RequirePackage{array, xcolor, titling, enumitem, hyperref, titlesec, etoolbox, ulem}
\definecolor{navy}{RGB}{0,51,102}
\definecolor{linkcolor}{RGB}{0,102,204}

% Disable page numbering
\pagenumbering{gobble}

% Font and Layout
\linespread{1.1}
\setlength{\parskip}{0.5em}
\setlength{\parindent}{0em}

% Hyperlinks setup
\hypersetup{colorlinks=true, urlcolor=linkcolor, linkcolor=linkcolor}

% Section format
\titlespacing*{\section}{0pt}{5pt}{0pt} % \titlespacing*{<command>}{<left>}{<before-sep>}{<after-sep>}
\newcommand*{\sectionformat}{\Large\bfseries\color{navy}}

% New commands
\newcommand{\position}[3]{\noindent \uline{\textbf{\textcolor{navy}{\textsc{#1}}} \hfill \textbf{#2} \hfill \textit{#3}} \\[0.1cm]}
\newcommand{\ressubheading}[5]{\placeheadding{#1}{#2}{#3} \positionheading{#4}{#5} \\}

\newcommand{\project}[4]{%
	\noindent
	\ifstrempty{#1}{}{\textbf{\textcolor{navy}{#1}}}% Project name
	\ifstrempty{#2}{}{\ifstrempty{#1}{}{\newline}\textit{\textbf{Responsibilities:}} {#2}}% Responsibilities
	\ifstrempty{#3}{}{\ifstrempty{#1}{\ifstrempty{#2}{}{\newline}}{\newline}\textit{\textbf{Results:}} #3}% Result
	\ifstrempty{#4}{}{\ifstrempty{#1}{\ifstrempty{#2}{\ifstrempty{#3}{}{\newline}}{\newline}}{\newline}\textit{\textbf{Tech:}} \textbf{#4}}% Technologies
	\vspace{0.2cm}
}

% Table setup
\definecolor{lightgray}{gray}{0.75}
\newcolumntype{L}{>{\raggedright}p{0.85\textwidth}} % LEFT TABLE MARGIN
\newcolumntype{R}{p{0.15\textwidth}} % RIGHT TABLE MARGIN
\newcommand\VRule{\color{lightgray}\vrule width 0.5pt}