\NeedsTeXFormat{LaTeX2e}
\LoadClassWithOptions{article}
\ProvidesPackage{homework}[homework template for various courses]

% Packages for text and input
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{lmodern}
\RequirePackage{DejaVuSansMono}

% Packages for math and theorems
\RequirePackage{amsmath, amsthm, amssymb, amsfonts}
\RequirePackage{thmtools}

% Packages for tables and figures
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage{multirow}
\RequirePackage[caption=false,font=footnotesize]{subfig}
\RequirePackage{tikz}

% Packages for page layout and hyperlinks
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}

% Packages for colors and boxes
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{framed}
\RequirePackage[most]{tcolorbox}

% Other useful packages
\RequirePackage{algorithmic}
\RequirePackage{array}
\RequirePackage{setspace}
\RequirePackage{lipsum}
\RequirePackage{ifthen}
\RequirePackage{pgffor}
\RequirePackage{bookmark}
\RequirePackage{listings}
\RequirePackage{enumitem}
\RequirePackage{suffix}

% Set padding for enumitem
\setlist[enumerate]{topsep=-0.8em, itemsep=0em}
\setlist[itemize]{topsep=-0.8em, itemsep=0em}

% Set font for texttt
\renewcommand{\ttdefault}{lmtt}


% Page layout configuration
\geometry{
    textheight=9in,
    textwidth=6.5in,
    top=1in,
    headheight=12pt,
    headsep=25pt,
    footskip=30pt
}
\setstretch{1.2}

% Header and footer configuration
\pagestyle{fancy}
\newlength\FHoffset
\setlength\FHoffset{0.1cm}
\addtolength\headwidth{2\FHoffset}
\fancyhead[L]{\authorname}
\fancyhead[C]{\coursecode}
\fancyhead[R]{\paperdate}

% Paragraph and line spacing configuration
\setlength{\parskip}{1em}
\setlength{\parindent}{0pt}

% Reduce the space between the title and the text
\makeatletter
\renewcommand{\section}{\@startsection{section}{1}{0pt}{10pt}{5pt}{\normalfont\Large\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{0pt}{8pt}{3pt}{\normalfont\large\bfseries}}
\makeatother


% Colors for the boxes and listings
\definecolor{UCDGreen}{rgb}{0.5, 0.71, 0.31}
\definecolor{UCDBlue}{rgb}{0, 0.55, 0.77}
\definecolor{UCDYellow}{rgb}{0.95, 0.76, 0.18}
\definecolor{backcolour}{rgb}{0.95, 0.95, 0.92}
\definecolor{codegreen}{rgb}{0, 0.6, 0}
\definecolor{codegray}{rgb}{0.5, 0.5, 0.5}
\definecolor{codepurple}{rgb}{0.58, 0, 0.82}
\definecolor{keywordcolor}{rgb}{0.9, 0.3, 0.1}
\definecolor{bordercolor}{rgb}{0.7, 0.7, 0.7}
\definecolor{linenumberbg}{rgb}{0.95, 0.95, 0.95}



% Abstract Box Style
\newtcolorbox[auto counter, number within=section]{colorfulabstract}[1][]{
    title={\bfseries \abstractname},
    enhanced,
    drop shadow={black!50!white},
    coltitle=black,
    top=0.2in,
    bottom=0.15in,
    attach boxed title to top left={xshift=1.5em, yshift=-\tcboxedtitleheight/2},
    boxed title style={size=small, colback=white!40!UCDGreen},
    colback=white,
    colframe=black!50,
    width=\textwidth,
    arc=4mm,
    auto outer arc,
    sharp corners=all,
    #1 % Allow additional customization via arguments
}

\newtcolorbox[auto counter, number within=section]{monochromeabstract}[1][]{
    title={\bfseries \abstractname},
    enhanced,
    coltitle=black,
    top=0.2in,
    bottom=0.15in,
    attach boxed title to top left={xshift=1.5em, yshift=-\tcboxedtitleheight/2},
    boxed title style={size=small, colback=white, boxrule=0.2mm},
    colback=white,
    colframe=black,
    boxrule=0.2mm,
    width=\textwidth,
    arc=4mm,
    auto outer arc,
    sharp corners=all,
    #1 % Allow additional customization via arguments
}


\tcbset {
    base/.style={
        arc=0mm,
        bottomtitle=0.5mm,
        boxrule=0mm,
        colbacktitle=black!10!white,
        coltitle=black,
        fonttitle=\bfseries,
        left=2.5mm,
        leftrule=1mm,
        right=3.5mm,
        title={#1},
        toptitle=0.75mm,
    }
}

\newtcolorbox{greenbox}[1]{
    colframe=UCDGreen,
    base={#1}
}

\newtcolorbox{bluebox}[1]{
    colframe=UCDBlue,
    base={#1}
}

\newtcolorbox{yellowbox}[1]{
    colframe=UCDYellow,
    base={#1}
}

\newtcolorbox{subbox}[1]{
    colframe=black!30!white,
    base={#1}
}


\declaretheoremstyle[name=Theorem]{thmsty}
\declaretheorem[style=thmsty]{theorem}
\tcolorboxenvironment{theorem}{colframe=UCDGreen}

\declaretheoremstyle[name=Proposition]{prosty}
\declaretheorem[style=prosty,numberlike=theorem]{proposition}
\tcolorboxenvironment{proposition}{colframe=UCDBlue}

\declaretheoremstyle[name=Principle]{prcpsty}
\declaretheorem[style=prcpsty,numberlike=theorem]{principle}
\tcolorboxenvironment{principle}{colframe=UCDYellow}


% Listing configuration
\lstdefinestyle{elegantstyle}{
    backgroundcolor=\color{backcolour},
    commentstyle=\color{codegreen}\textit,
    keywordstyle=\color{keywordcolor}\bfseries,
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    keepspaces=true,
    numbers=left,
    numbersep=10pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    tabsize=4,
    frame=shadowbox,
    framerule=1pt,
    rulecolor=\color{bordercolor},
    frameround=tttt,
    xleftmargin=10pt,
    xrightmargin=10pt,
    basicstyle=\fontfamily{txtt}\selectfont\footnotesize
}

\lstset{style=elegantstyle}


% ----- \question -----------------------------------------
% Question counters
\newcounter{questionCounter}
\newcounter{partCounter}[questionCounter]

% Configuration commands
\newcommand{\writtensection}{0}
\newcommand{\questionnewpageflag}{0}

% Main question command: \question{title}
\newcommand{\question}[1]{%
    \formatquestion{#1}%
}

% Starred version for custom numbering: \question*{title}{number}
\WithSuffix\newcommand\question*[2]{%
    \setcounter{questionCounter}{#2}%
    \addtocounter{questionCounter}{-1}%
    \formatquestion{#1}%
}

% question formatting
\newcommand{\formatquestion}[1]{%
    % Optional new page
    \ifthenelse{\equal{\questionnewpageflag}{1}}{\newpage}{}%
    % Increment counter and reset parts
    \stepcounter{questionCounter}%
    \setcounter{partCounter}{0}%
    % Format question header
    \par\vspace{0.2in}%
        \noindent{\large \textbf{\getquestionlabel{\arabic{questionCounter}}}~\textit{#1}}\par
    \vspace{-1.8em}%
    \noindent\rule{3in}{0.4pt}\\
    \vspace{0.08in}%
}

% Generate question label
\newcommand{\getquestionlabel}[1]{%
    \ifnum\writtensection=0%
        Question #1.%
    \else%
        Question \writtensection.#1%
    \fi%
}


% Configuration commands
\newcommand{\enablenewpage}{\renewcommand{\questionnewpageflag}{1}}
\newcommand{\disablenewpage}{\renewcommand{\questionnewpageflag}{0}}
\newcommand{\setwrittensection}[1]{\renewcommand{\writtensection}{#1}}
\newcommand{\resetquestions}{\setcounter{questionCounter}{0}}

% ————————————————————————————————————————————————————

% Calculate the number of authors
\newcounter{totalnames}
\newcommand{\countnames}{
    \setcounter{totalnames}{0} % Reset counter
    \foreach \name in \namelist {
        \stepcounter{totalnames}
    }
}

% Calculate the number of supervisors
\newcounter{totalsupervisors}
\newcommand{\countsupervisors}{
    \setcounter{totalsupervisors}{0} % Reset counter
    \foreach \name in \supervisorlist {
        \stepcounter{totalsupervisors}
    }
}


% Create a compact title at the top of the first Page
\newcommand{\makecompacttitle}{
    \begingroup
    \setlength{\parskip}{0pt}

    \thispagestyle{plain}

    % Create a centered header with institution name and other report info
    \begin{flushleft}
        \ifdefined\institutionname
            {\normalsize \textsc{\institutionname}} \par
        \fi
        \vspace{0.3cm}
        \vspace{0.2cm}
        {\Large \textbf{\uppercase{\coursecode \ \reporttitle}}} \par
        \vspace{0.2cm}
        {\large \textit{\projecttitle}} \par
        \vspace{0.25cm}

        % Authors section
        \countnames

        % Print all author names inline with commas between
        \begingroup
        \newcounter{namecount}
        \setcounter{namecount}{0}
        \foreach \name in \namelist {
            \stepcounter{namecount}
            \name
            \ifthenelse{\value{namecount} < \value{totalnames}}{, }{}
        }
        \endgroup
        \par
        \vspace{0.1cm}
        \textbf{Date:} \paperdate
    \end{flushleft}
    \endgroup
}
