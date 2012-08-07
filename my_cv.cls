\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2010/10/04 My CV class]
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% environment specific
\usepackage{ifxetex}
\ifxetex
  \usepackage{fontspec}
  \usepackage{xunicode}
  \defaultfontfeatures{Mapping=tex-text} % To support LaTeX quoting style
  \defaultfontfeatures{Ligatures=TeX}
  \setmainfont[SlantedFont={Charis SIL},SlantedFeatures={FakeSlant=0.2}]{Charis SIL}
  % japanese
  \usepackage{xeCJK}
  \setCJKmainfont{DejaVu Sans Mono}
  \setCJKfamilyfont{sf}{Kozuka Mincho Pr6N:style=R,Regular}
  \setCJKfamilyfont{tt}{DejaVu Sans Mono}
\else
  \usepackage[utf8]{inputenc}
  \usepackage[T1]{fontenc}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% visuals

\RequirePackage{titlesec}
\RequirePackage{xcolor}

\def\@maincolor{black}
\newcommand*{\maincolor}[1]{\def\@maincolor{#1}}
%we can also load a style instead of manually setting every variable

% loads a style scheme
\newcommand*{\cvstyle}[1]{\RequirePackage{cvstyle#1}}

\titleformat{\section} % Customise the \section command
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em} % Can be used to give a prefix to all sections, like 'Section ...'
  {} % Can be used to insert code before the heading
  [{\color{\@maincolor}\titlerule}] % Inserts a horizontal line after the heading

\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}


