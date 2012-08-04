\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{yapbook}[2010/10/04 Yet Another Project''s book class]
\LoadClass{amsbook}

%------------------------------------------------------------------------------
%environment specific
%------------------------------------------------------------------------------
%do the right thing on each driver
\usepackage{ifxetex}

\ifxetex
    \usepackage{fontspec}
    \usepackage{xunicode}
    \defaultfontfeatures{Mapping=tex-text} % To support LaTeX quoting style
    \defaultfontfeatures{Ligatures=TeX}
\else
    \usepackage[utf8]{inputenc}
    \usepackage[T1]{fontenc}
\fi

%------------------------------------------------------------------------------
%Semantic structure (and structure in general)
%------------------------------------------------------------------------------
%The introductory chapter, which does not really contain information on the
%matter at stake
\newcommand*{\introduction}[1]{\chapter*{#1}}

%chapter intros
\usepackage{framed}
%\definecolor{shadecolor}{rgb}{0.95,0.20,0.20}% red{0,0,0}% black
\newenvironment{chapsummary}%
{\vskip -15pt\begin{leftbar}\begin{quotation}\begin{itshape}}%
{\end{itshape}\end{quotation}\end{leftbar}}%

%------------------------------------------------------------------------------
%Visuals (hard-coded for all YAP books)
%------------------------------------------------------------------------------
\usepackage[left=2cm,top=3cm,right=1.5cm,bottom=2cm]{geometry}
\usepackage[ocgcolorlinks,unicode]{hyperref} %TODO: ocgcolorlinks does not work, TODO: pass arg "xetex"
\hypersetup{%
%    bookmarks=true,         % show bookmarks bar?
    unicode=true,          % non-Latin characters in Acrobat’s bookmarks
    pdftoolbar=true,        % show Acrobat’s toolbar?
    pdfmenubar=true,        % show Acrobat’s menu?
    pdffitwindow=false,     % window fit to page when opened
    pdfstartview={FitH},    % fits the width of the page to the window
    pdftitle={Dezvoltare web cu PHP},    % title
    pdfauthor={Flavius Aspra},     % author
    pdfsubject={Programare},   % subject of the document
    pdfcreator={pdflatex},   % creator of the document
    pdfproducer={pdflatex}, % producer of the document
    pdfkeywords={programare php}, % list of keywords
    pdfnewwindow=true,      % links in new window
    colorlinks=false,       % false: boxed links; true: colored links
%    linkcolor=red,          % color of internal links
%    citecolor=green,        % color of links to bibliography
%    filecolor=magenta,      % color of file links
%    urlcolor=red,           % color of external links
    linkbordercolor={1 0 0}
}

\usepackage[Lenny]{fncychap}


\usepackage{listings}
