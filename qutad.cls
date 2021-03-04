%% qutad.cls
%% Copyright 2020-2021 Naheel Faisal <naheelazawy@gmail.com>
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
%
% The Current Maintainer of this work is Naheel Faisal.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{qutad}[2020/02/28 QU LaTeX class by Naheel Faisal]

\LoadClass[12pt]{report}

\newcommand{\mybibstyle}{apa}
\DeclareOption{ieee}{\renewcommand{\mybibstyle}{ieee}}
\ProcessOptions\relax

\usepackage{geometry}
\geometry{a4paper,lmargin=1.5in,rmargin=1in,tmargin=1in,bmargin=1in,includehead,includefoot}
\usepackage{setspace} % set the stretching
\usepackage{newtxtext} % Times New Roman
\usepackage{titling} % to use \theauthor, \thetitle, ...
\usepackage{indentfirst} % indent first line of every paragraph
\usepackage{lipsum} % for testing...

% chapter header style
\usepackage{titlesec}
\titlespacing*{\chapter}{0pt}{-25pt}{0pt}
\titleformat{\chapter}
            {\normalfont\centering}
            {\MakeUppercase{\chaptertitlename}\ \thechapter:\ }
            {0cm}
            {\MakeUppercase}
\titleformat{\section}
            {\normalfont\centering}
            {}
            {0cm}
            {}
\titleformat{\subsection}
            {\normalfont\centering\itshape}
            {}
            {0cm}
            {}
\titleformat{\subsubsection}
            {\normalfont\itshape}
            {}
            {0cm}
            {}

% table of content styles
\usepackage{titletoc}
\titlecontents{chapter}[0em]
              {}{\@chapapp\ \thecontentslabel: }{}
              {\titlerule*{.}\contentspage}
\titlecontents{section}[1em]
              {}{}{}
              {\titlerule*{.}\contentspage}
\titlecontents{subsection}[2em]
              {}{\itshape}{}
              {\titlerule*{.}\contentspage}
\titlecontents{table}[0em]
              {}{Table \thecontentslabel. }{}
              {\titlerule*{.}\contentspage\nobreak}
\titlecontents{figure}[0em]
              {}{Figure \thecontentslabel. }{}
              {\titlerule*{.}\contentspage}
% For the appendices https://tex.stackexchange.com/a/148573/167019
\usepackage{appendix}
\g@addto@macro\appendices{
  \addtocontents{toc}{\protect\renewcommand{\protect\@chapapp}{\appendixname}}
}

% lists styles
\renewcommand{\contentsname}{\hfill\normalfont\fontsize{14pt}{12pt}\selectfont TABLE OF CONTENTS\hfill}
\renewcommand{\listtablename}{\hfill\normalfont\normalsize LIST OF TABLES\hfill}
\renewcommand{\listfigurename}{\hfill\normalfont\normalsize LIST OF FIGURES\hfill}

% page numbers style
\usepackage{fancyhdr}
\pagestyle{fancy} % turn it on
\fancyhf{} % clears them
\renewcommand{\headrulewidth}{0pt} % remove top bar
\fancyfoot[R]{\thepage\\} % set page number to the right
\fancypagestyle{plain} { % to work with chapter pages
  \fancyhf{} % clears them
  \renewcommand{\headrulewidth}{0pt} % remove top bar
  \fancyfoot[R]{\thepage} % set page number to the right
}

% Thicker tables hlines
\setlength{\arrayrulewidth}{1.4pt}

% Left align captions
\usepackage{caption}
\captionsetup{
  justification=raggedright,
  singlelinecheck=false,
  belowskip=12pt,
  aboveskip=10pt}

% Parts of this section are borrowed from:
% https://github.com/rriley/qu-thesis
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Tweak float placements
% From: http://mintaka.sdsu.edu/GF/bibliog/latex/floats.html "Controlling LaTeX Floats"
% and based on: http://www.tex.ac.uk/cgi-bin/texfaq2html?label=floats
% LaTeX defaults listed at: http://people.cs.uu.nl/piet/floats/node1.html

% Alter some LaTeX defaults for better treatment of figures:
% See p.105 of "TeX Unbound" for suggested values.
% See pp. 199-200 of Lamport's "LaTeX" book for details.
%   General parameters, for ALL pages:
\renewcommand{\topfraction}{0.85}	% max fraction of floats at top
\renewcommand{\bottomfraction}{0.6}	% max fraction of floats at bottom
%   Parameters for TEXT pages (not float pages):
\setcounter{topnumber}{2}
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{4}     % 2 may work better
\setcounter{dbltopnumber}{2}    % for 2-column pages
\renewcommand{\dbltopfraction}{0.66}	% fit big float above 2-col. text
\renewcommand{\textfraction}{0.15}	% allow minimal text w. figs
%   Parameters for FLOAT pages (not text pages):
\renewcommand{\floatpagefraction}{0.66}	% require fuller float pages
% N.B.: floatpagefraction MUST be less than topfraction !!
\renewcommand{\dblfloatpagefraction}{0.66}	% require fuller float pages

% The documentclass already sets parameters to make a high penalty for widows and orphans.

%%%% Use packages

%%% For figures
\usepackage{graphicx}
%\usepackage{subfig,rotate}

%%% for comments
\usepackage{verbatim}

%%% For tables
\usepackage{multirow}
% Longtable lets you have tables that span multiple pages.
\usepackage{longtable}

% Booktabs produces far nicer tables than the standard LaTeX tables.
%   see: http://en.wikibooks.org/wiki/LaTeX/Tables
\usepackage{booktabs}

%set parameters for longtable:
% default caption width is 4in for longtable, but wider for normal tables
\setlength{\LTcapwidth}{\textwidth}

% url package understands urls (with proper line-breaks) without hyperlinking them
\usepackage{url}
\usepackage{tikz, color, graphics, xcolor, booktabs, rotating, floatpag, fancyhdr}
\usetikzlibrary{shapes, backgrounds, chains}
\usetikzlibrary{fadings, decorations.pathreplacing,angles,quotes}
\usepackage{tikz}
\usetikzlibrary{plotmarks}
\usetikzlibrary{shapes}
\usetikzlibrary{calc}
\usepackage{pgfplots}
\usepackage{pgfplotstable}
\pgfplotsset{compat=1.17} % fix the version of pgfplots
\usepackage[backend=biber,natbib=true,style=\mybibstyle]{biblatex}
\usepackage{float}
\usepackage{enumitem}
\usepackage{longtable}
\newcolumntype{x}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}

% To allow for clickable (hyper-referencing) in-text citations, figure #s,
% and sections in-text referencing
% By default, colors are off because your thesis should stand-alone
% when printed. However, it is nice to have the TOC clickable in the PDF.
\usepackage[hidelinks,pdfusetitle]{hyperref}
\hypersetup{
  colorlinks=false, % set true if you want colored links
  linktoc=all,     % set to all if you want both sections and subsections linked
  linkcolor=blue,  % choose some color if you want links to stand out
  citecolor=green,
  urlcolor=blue,
  linktocpage,
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% more math symbols and commands
\usepackage{amsmath}

% pdf keywords
\hypersetup{
  pdfkeywords={Qatar University, TAD, https://github.com/Naheel-Azawy/qu-tad-template}
}

\long\def\abstract#1{\gdef\@abstract{#1}}

\newcommand*{\makefrontmatter}{
  \newgeometry{lmargin=1in,rmargin=1in,tmargin=1in,bmargin=1in,includefoot}

  % COVER PAGE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \thispagestyle{empty}
  \begin{center}
    \setstretch{2.8}
    QATAR UNIVERSITY \\
    \MakeUppercase{\college} \\
    \MakeUppercase{\thetitle} \\
    BY \\
    \MakeUppercase{\theauthor}
  \end{center}
  \vspace*{\fill}
  \begin{center}
    \setstretch{2}
    A \degreetype\ Submitted to \\
    the \college \\
    in Partial Fulfillment of the Requirements for the Degree of \\
    \degree
  \end{center}
   \vspace{0.5cm}
  \begin{center}
    \submittedmonth\, \submittedyear \\ \vspace{0.4cm}
    \copyright\ \copyrightyear. \theauthor. All Rights Reserved.
  \end{center}
  \vspace{1.7cm}
  \newpage

  \newgeometry{lmargin=1.5in,rmargin=1in,tmargin=1in,bmargin=1in,includehead,includefoot}

  % page numbering
  \pagenumbering{roman}
  \setcounter{page}{2}

  % COMITTEE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \begin{center}
    \fontsize{14pt}{12pt}\selectfont
    COMMITTEE PAGE
  \end{center}
  \begin{center}
    \setstretch{1.5}
    The members of the Committee approve the \degreetype\ of \\
    \theauthor\ defended on \defensedate.
  \end{center}

  \begin{flushright}
    \setstretch{1.15}
    \ifdefined\adviser
    \noindent \makebox[2.5in]{\hrulefill} \\
    \adviser \\
    \degreetype\ Supervisor \\~\\
    \fi

    \ifdefined\coadviser
    \noindent \makebox[2.5in]{\hrulefill} \\
    \coadviser \\
    \degreetype\ Co-Supervisor \\~\\
    \fi

    \ifdefined\committeeone
    \noindent \makebox[2.5in]{\hrulefill} \\
    \committeeone \\
    Committee Member \\~\\
    \fi

    \ifdefined\committeetwo
    \noindent \makebox[2.5in]{\hrulefill} \\
    \committeetwo \\
    Committee Member \\~\\
    \fi

    \ifdefined\committeethree
    \noindent \makebox[2.5in]{\hrulefill} \\
    \committeethree \\
    Committee Member \\~\\
    \fi

  \end{flushright}

  \vfill

  \noindent \ \ Approved: \\
  \noindent \makebox[\linewidth]{\hrulefill} \\
  \noindent \collegedean, Dean, \college
  \newpage

  % ABSTRACT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \begin{center}
    \fontsize{14pt}{12pt}\selectfont
    ABSTRACT
  \end{center}
  \authorabstract, \ifthenelse{\equal{\degreetype}{Thesis}}{Masters}{Doctorate} : \submittedmonth : \submittedyear, \degree \\
  \noindent Title: \thetitle \\
  \noindent Supervisor of \degreetype: \adviser. \\
  \@abstract

  \newpage

  % DEDICATION  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \begin{center}
    \addcontentsline{toc}{chapter}{DEDICATION}
    DEDICATION
  \end{center}
  \vfill
  \begin{center}
    \emph{\dedication}
  \end{center}
  \vfill
  \vspace*{2in}
  \newpage

  % ACKNOWLEDGMENTS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \begin{center}
    \addcontentsline{toc}{chapter}{ACKNOWLEDGMENTS}
    ACKNOWLEDGMENTS
  \end{center}

  \acknowledgments
  %\newpage

  % TOC %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  {
    \vspace*{-2.5cm}
    \setstretch{2}
    \let\bfseries\mdseries
    \tableofcontents
  }
  %\newpage

  % LOT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \vspace*{-2cm}
  \addcontentsline{toc}{chapter}{LIST OF TABLES}
  \listoftables
  %\newpage

  % LOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \vspace*{-2.2cm}
  \addcontentsline{toc}{chapter}{LIST OF FIGURES}
  \listoffigures
  \newpage

  % page numbering
  \pagenumbering{arabic}
  \setcounter{page}{1}

  % TODO: Fix this workaround
  \newgeometry{lmargin=1.5in,rmargin=1in,tmargin=1in,bmargin=0.75in,includefoot}

}

% global double spacing
\setstretch{2}

% single spacing for verbatim
\let\oldv\verbatim
\def\verbatim{\par\setstretch{1}\oldv}

% \printbibliography but to match the template
\newcommand{\printreferences} {
  {
    % add the Bibliography to the Table of Contents
    \cleardoublepage
    \ifdefined\phantomsection
    \phantomsection  % makes hyperref recognize this section properly for pdf link
    \else
    \fi
    \addcontentsline{toc}{chapter}{References}
  }
  \printbibliography[title = {REFERENCES}]
}
