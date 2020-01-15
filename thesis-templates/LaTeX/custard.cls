\NeedsTeXFormat{LaTeX2e}

% PLEASE UPDATE DATE THE FOLLOWING LINE WHEN UPLOADING NEW VERSION
\ProvidesClass{custard}[2011/01/21 the Completely Unofficial Swansea Theses And Related Documents class] 

%% Welcome to the...
%% Completely Unofficial Swansea Theses And Related Documents (CUSTARD) class.
%%
%% The Swansea University guidelines for thesis presentation are currently
%% (as of February 2010) available at:
%% 
%% http://www.swan.ac.uk/registry/academicguide/DraftingSubmittingandExaminingaThesis/GuidetoSubmissionandPresentationoftheThesis/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Global Variable Declarations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% These variables control certain code executions in this class
%% file. They are enabled/disabled via class options that the user
%% specifices when loading this class.

\newif\if@oneortwosidespecified %% Makes sure user has chosen one or two sided. True iff user specified oneside or twoside
\newif\if@twoside %% True is two side, false if one side
\newif\if@decl
\newif\if@minitoc
\newif\if@afourspecified

%% Default values
\@oneortwosidespecifiedfalse
\@decltrue
\@afourspecifiedfalse
\@minitocfalse

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Declaration of Class Options
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% These are the class options that this class supports. It also
%% allows us to pass options on to the underlying class.

%% Paper options. The only paper size we support is A4.
\DeclareOption{letterpaper}{\ClassError{custard}{Custard does not work with letter paper}}
\DeclareOption{executivepaper}{\ClassError{custard}{Custard does not work with executive paper}}
\DeclareOption{legalpaper}{\ClassError{custard}{Custard does not work with legal paper}}
\DeclareOption{a5paper}{\ClassError{custard}{Custard does not work with A5 paper}}
\DeclareOption{b5paper}{\ClassError{custard}{Custard does not work with B5 paper}}
\DeclareOption{a4paper}{\@afourspecifiedtrue}
%% Other options
\DeclareOption{oneside}{\PassOptionsToClass{\CurrentOption}{memoir} \@twosidefalse \@oneortwosidespecifiedtrue}
\DeclareOption{twoside}{\PassOptionsToClass{\CurrentOption}{memoir} \@twosidetrue \@oneortwosidespecifiedtrue}
\DeclareOption{draft}{\PassOptionsToClass{\CurrentOption}{memoir} \@declfalse}
\DeclareOption{forcedecl}{\@decltrue}
\DeclareOption{nodecl}{\@declfalse}
\DeclareOption{nominitoc}{\@minitocfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions \relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Display Warnings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Display a warning if not using explicitly A4 paper.
\if@afourspecified
%% Do nothing
\else
%% Warn that we use A4, not US Letter
\ClassWarning{custard}{You have not set a paper type explicitly. Please note that custard uses A4 paper, *not* US Letter.}
\fi

%% Display a warning if the user did not specify one to two sided paper.
\if@oneortwosidespecified
%% Do nothing
\else
%% Warn User
\ClassWarning{custard}{You have not specified one or two sided paper.}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Load Underlying Class
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[a4paper, oldfontcommands]{memoir}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Required Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% The following three lines allow for changes in font.
\RequirePackage{mathptmx} % Times Roman typeface (with maths support)
%% \RequirePackage[scaled=.90]{helvet} % Helvetica typeface for sans-serif
%% \RequirePackage{courier} % Courier typeface for fixed width (`typewriter type')

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{graphicx}
\RequirePackage[nohints]{minitoc} % Mini table of contents (e.g. for each chapter)
\RequirePackage{xcolor} % Colour support
\RequirePackage{xspace} % For macros (add space unless followed by punctuation)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Configure Page Margins
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Set University-recommended page margins (see guidelines)

\setlrmarginsandblock{4cm}{2.5cm}{*}
\checkandfixthelayout

%% Fix marginpars
\setlength{\marginparwidth}{0.75 \foremargin}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Configure Headers and Footers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Make a custom style so that we can easily customise it if we want to
% We base this off 'ruled'. Other options: empty, plain, headings, ruled, Ruled, companion.
\copypagestyle{thesis}{ruled}

%% setup the headers
\makeevenhead{thesis}{\itshape \leftmark}{}{}
\makeoddhead{thesis}{}{}{\itshape \rightmark}

\if@twoside
  %% do nothing - it's already setup for two sided
\else
  %% Change the headers for one sided pages
  \makeoddhead{thesis}{\itshape \leftmark}{}{}
  \makeoddfoot{thesis}{}{\thepage}{}
\fi

%% If in draft mode, add footers containing the date of processing.
\ifdraftdoc
\makeevenfoot{thesis}{\thepage}{}{\textcolor{red}{\textit{Draft: \today}}}
\makeoddfoot{thesis}{\textcolor{red}{\textit{Draft: \today}}}{}{\thepage}
\makeevenfoot{plain}{}{\thepage}{\textcolor{red}{\textit{Draft: \today}}}
\makeoddfoot{plain}{\textcolor{red}{\textit{Draft: \today}}}{\thepage}{}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Configure Title Page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% This (fairly complex) set of macros redefines the \maketitle macro
%% to produce a full-page title.
%%
%% Feature: the title page looks noticeably different if draft mode is set.

%% Awarding institution (e.g. "Swansea University")
\newcommand{\awardinginst}[1]{%
\gdef\@awardinginst{#1\xspace}}
\newcommand{\@awardinginst}{}

%% Degree type (e.g. Doctor of Philosophy, Master of Research)
\newcommand{\degree}[1]{%
\gdef\@degree{#1\xspace}}
\newcommand{\@degree}{}

%% Department name (e.g. Department of Computer Science)
\newcommand{\department}[1]{%
\gdef\@department{#1\xspace}}
\newcommand{\@department}{~}

%% University name (e.g. Swansea University)
\newcommand{\university}[1]{%
\gdef\@university{#1\xspace}}
\newcommand{\@university}{~}

%% Default value for date
\gdef\thedate{DATE MISSING -- Typeset \today}

%% Set file path to University logo
%% TODO: At present, it is assumed that the logo has the same proportions as the current Swansea logo...
\newcommand{\unilogo}[1]{%
\gdef\@unilogo{\includegraphics[width=0.6\linewidth]{#1}\xspace}}
\newcommand{\@unilogo}{~}

\renewcommand{\maketitle}{%
  \pagestyle{empty}
  \begin{center}

    \vspace*{12mm}

    {\huge \bfseries \@title}

    \vspace{12mm}

    {\Large \@author}

    \ifdraftdoc
      \vspace{10mm}      
       {\Huge\bfseries \textcolor{red}{Thesis Draft: \today}\\}
       \vspace{10mm}
    \else
      \vspace{10mm}
      {\large Submitted to \@awardinginst in fulfilment\\
      of the requirements for the Degree of \@degree}

      \vspace{22mm}
     
      \@unilogo

      \vspace{20mm}
      \@department\\
      \@university

      \vspace{5mm}
      \thedate
    \fi
  \end{center}

  %% Run mini toc only if enabled
  \if@minitoc
    \dominitoc
  \fi

  \cleardoublepage
} %% end maketitle

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Configure Declaration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Usage: \declaration
\newcommand{\rowdots}{\hspace{3.35mm}............................................................}

\newcommand{\declaration}{
  \if@decl
    \thispagestyle{empty}
    \ \\[5mm]
    {\Huge \bfseries Declaration}

    \vspace{5mm}
    \noindent This work has not been previously accepted in substance for any
    degree and is not being concurrently submitted in candidature for
    any degree.

    \vspace{7mm}
    \begin{tabular}{ll}
      Signed & \rowdots \hspace{5mm} (candidate)\\[5mm]
      Date & \rowdots
    \end{tabular}

    \vspace{15mm}
    \noindent{\Huge \bfseries Statement 1}

    \vspace{5mm}
    \noindent This thesis is the result of my own investigations, except where
    otherwise stated.  Other sources are acknowledged by footnotes giving
    explicit references.  A bibliography is appended.

    \vspace{7mm}
    \begin{tabular}{ll}
      Signed & \rowdots \hspace{5mm} (candidate)\\[5mm]
      Date & \rowdots
    \end{tabular}

    \vspace{15mm}
    \noindent{\Huge \bfseries Statement 2}

    \vspace{5mm}
    \noindent I hereby give my consent for my thesis, if accepted, to be available
    for photocopying and for inter-library loan, and for the title and
    summary to be made available to outside organisations.

    \vspace{7mm}
    \begin{tabular}{ll}
      Signed & \rowdots \hspace{5mm} (candidate)\\[5mm]
      Date & \rowdots
    \end{tabular}

    \cleardoublepage
  \fi
} %% end declaration

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Configure Abstract
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Usage:
%% \begin{abstract}
%% Text of abstract
%% \end{abstract}

\renewenvironment{abstract}
{\chapter*{Abstract\markboth{Abstract}{Abstract}}
  %% Hack for minitoc - This may or may not be needed. This will stop
  %% (or cause in some cases) minitoc to misplace the minitocs. If you
  %% find minitoc puts the minitocs in the wrong chapter (ie the
  %% minitoc for chapter 1 may appear in chapter 2, and chapter 2's
  %% minitoc is in chapter 3 ect then try to comment/uncomment the
  %% following line of code.
  %% \mtcaddchapter
}
{\cleardoublepage}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Configure Acknowledgements
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Usage:
%% \begin{Acknowledgements}
%% Acknowledgement text
%% \end{Acknowledgements}

\newenvironment{Acknowledgements}
{\chapter*{Acknowledgements\markboth{Acknowledgements}{Acknowledgements}}}
{\cleardoublepage}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Configure Table of Contents
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Original name = Contents
\renewcommand{\contentsname}{Table of Contents}
\setcounter{tocdepth}{1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Configure Mini Table of Contents (minitoc)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setcounter{minitocdepth}{1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Configure mainmatter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Redefine \mainmatter without losing the original definition
\let\@OLDmainmatter\mainmatter
\renewcommand{\mainmatter}{\@OLDmainmatter \pagestyle{thesis}}

%% Memoir stops numbering at the level of section. reset this to
%% number up until subsubsection.
\setsecnumdepth{subsubsection}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Configure Chapter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Use memoir to add a minito to the start of each new chapter
\renewcommand{\memchapinfo}[4]{%
  %% Add a minitoc and some spacing etc if mini toc is enabled
  \if@minitoc%
    \minitoc\vspace{\topskip}\@afterheading
  \fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Configure Maths Support
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Theorems, definitions, examples, etc.
\newtheoremstyle{thesis} %name
 {9pt}% space above
 {9pt}% space below
 {}% body font
 {}% indent amount (empty or \parindent (or...?))
 {\bfseries}% theorem head font
 {}% punctuation after theorem head
 {0.5em}% space after theorem head
 {}% theorem head spec (empty means normal)  
\theoremstyle{thesis}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{remarks}[theorem]{Remarks}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Configure Bibliography
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Stop memoir adding a bibliography entry to the table of contents.
\nobibintoc
