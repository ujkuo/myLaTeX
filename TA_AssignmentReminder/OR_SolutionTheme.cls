% This is a theme file used for TAs to write the suggested
% solutions at the course Operations Research, 
% instructed by Ling-Chieh Kung.
% The primary purpose of separating the environment settings,
% packages invoking and macros is to polish the .tex file.
% Nobody wants to scroll for couple of seconds to move to the
% first word in the first problem; that's inefficient, disarray,
% and harmful to you.
% You can invoke or modify this file in other scenarios,
% such as other TA work or even personal assignments.
% That's totally fine. I am glad to see more and more people 
% deviate from MS Word and embrace LaTeX.
% 
% Usage: 
% 1. Put this .cls file in the same directory of your .tex file.
%    If you use Overleaf, download this file and upload to your
%    project repository.
% 2. Update the TA information and the semester 
%    at the end of this file.
% 3. Compile the .tex file via XeLaTeX (Click "Menu" at top-left
%    in Overleaf and change the compiler in the settings area)
%    since I invoke a package "xeCJK" to type in Chinese;
%    or you can comment out the command and use pdfLaTeX,
%    but I have a strong preference over xeLaTeX.
% 4. Select "OR_SolutionTheme" (the name of this file)
%    as your document class 
%    (i.e., type \documentclass{OR_SolutionTheme}), and
%    fill in the assignment's name, e.g., 
%    \assignment{Case Assignment 2} at the top of the .tex file.
% 5. Therefore, you can type the solutions within the document
%    environment (i.e., in the area between \begin{document}
%    and \end{document}).
% 6. Do not forget to type \maketitle command within the 
%    document environment to generate an article title.
% 7. I define couples of commands to ease work when typing the 
%   math formulations. Of course, you (TAs in the future) can
%   add or delete commands as your wish.
% 
% (c) Author: Yu-Chieh Kuo, NTUIM, ujkuo@ntu.im
% Update: March, 2022

\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{OR_SolutionTheme}

\LoadClass[10pt,a4paper]{article}


\RequirePackage{amsmath} % For the usage of \because and \therefore
\RequirePackage{amssymb, bm, nicematrix}
\RequirePackage{etoolbox}
\RequirePackage{indentfirst}
\RequirePackage{tabularx}
\RequirePackage{url}
\RequirePackage{mathtools}
\RequirePackage{booktabs}
\RequirePackage{authblk}
\RequirePackage[calcwidth]{titlesec}
\RequirePackage{bookmark}
\RequirePackage[capitalize]{cleveref}
\RequirePackage{array}
\RequirePackage[english]{babel}
\RequirePackage{enumitem} % For the usage of labeling in enumerate and itemize
\RequirePackage{xeCJK} % To type the Chinese words
\RequirePackage{xcolor}
\RequirePackage{textcomp}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{fullpage}
\RequirePackage{minted}
\RequirePackage{tikz}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{arydshln}
\newdimen\nodeDist
\nodeDist=35mm

\RequirePackage[mathscr]{euscript}
\let \eucal \mathscr
\RequirePackage{mathrsfs}
\DeclareMathAlphabet{\mathpzc}{OT1}{pzc}{m}{it}

\renewcommand{\baselinestretch}{1}
\parskip=10pt
\footnotesep=5mm

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makeatletter
% Macros for setting basic info
\newcommand{\course}[2][]{
    \ifstrempty{#1}{
        \gdef\shortcourse{#2}
    }{
        \gdef\shortcourse{#1}
    }
    \gdef\@course{#2}
}
\newcommand{\ntuim}{Department of Information Management, National Taiwan University. }
\newcommand{\semester}[1]{\gdef\@semester{#1}}
\newcommand{\assignment}[2][]{
    \ifstrempty{#2}{
        \gdef\@assignment{#1}
    }{
        \gdef\@assignment{#1 #2}
    }
}

\title{\@course, \@semester \\ 
Suggested Solution for\@assignment
}
\date{\today}

\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% \everymath{\displaystyle}

% commands for spacing
\newcommand{\Tstrut}{\rule{0pt}{4mm}}         % = `top' strut
\newcommand{\Bstrut}{\rule[-2mm]{0mm}{0mm}}   % = `bottom' strut

% Paired Delimiters {}, (), []
\providecommand\given{} % so it exists
\newcommand\SetSymbol[1][]{
   \nonscript\,#1\vert \allowbreak \nonscript\,\mathopen{}}
\DeclarePairedDelimiterX\Set[1]{\lbrace}{\rbrace}%
 { \renewcommand\given{\SetSymbol[\delimsize]} #1 }
\DeclarePairedDelimiterX{\Bkt}[1]{[}{]}{#1}
\DeclarePairedDelimiterX{\Paren}[1]{(}{)}{#1}
\DeclarePairedDelimiterX{\Abs}[1]{\lvert}{\rvert}{#1}
\newcommand{\PR}[1]{\Pr\Bkt*{#1}}
\newcommand{\overbar}[1]{\mkern 1.5mu\overline{\mkern-1.5mu#1\mkern-1.5mu}\mkern 1.5mu}

\newcolumntype{D}{>{$(}l<{)$}}
\newcolumntype{R}{>{\displaystyle}r}
\newcolumntype{C}{>{\displaystyle}c}
\newcolumntype{L}{>{\displaystyle}l}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{amsfonts}
\RequirePackage{amsthm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Declare operator and useful math command
\DeclareMathOperator*{\argmax}{argmax}
\DeclareMathOperator*{\argmin}{argmin}
\DeclareMathOperator{\EOp}{\mathbb{E}}
\newcommand{\E}[2]{\ensuremath{\EOp_{#1}\Bkt*{#2}}}
\newcommand{\pdv}[2]{\ensuremath{\frac{\partial {#1}}{\partial {#2}}}}
\newcommand{\spdv}[2]{\ensuremath{\frac{\partial^2 {#1}}{\partial {#2}}}}
\newcommand{\ppdv}[3]{\ensuremath{\frac{\partial^2 {#1}}{\partial {#2} \partial {#3}}}}

\newcommand{\R}{\mathbb{R}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\PS}[1]{\mathcal{P}(#1)}
\newcommand{\ve}{\varepsilon}
\newcommand{\vt}{\vartheta}

\newcommand{\sst}{\subset}
\newcommand{\sse}{\subseteq}

\newcommand{\ie}{\text{ i.e., }}
\newcommand{\st}{\text{s.t.}}
%newcommand{\Set}[1]{\{#1\}}

% Declare delimiter
\DeclareMathDelimiter{\lVert}
  {\mathopen}{symbols}{"6B}{largesymbols}{"0D}
\DeclareMathDelimiter{\rVert}
  {\mathclose}{symbols}{"6B}{largesymbols}{"0D}
\DeclarePairedDelimiter\norm{\lVert}{\rVert}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\red}[1]{\textcolor{Red}{#1}}
\newcommand{\blue}[1]{\textcolor{NavyBlue}{#1}}
\newcommand{\yellow}[1]{\textcolor{Dandelion}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\theoremstyle{plain}
\newtheorem{corollary}{Corollary}
\newtheorem{proposition}{Proposition}
\crefname{enumi}{problem}{problem}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Minted
\setminted[latex]{frame=single, linenos, numbersep=4pt, style=tango, breaklines=true, fontsize=\small, tabsize=2}
\setmintedinline[latex]{fontsize=\normalsize}
\renewcommand{\theFancyVerbLine}{\sffamily\textcolor[rgb]{0.7,0.7,0.7}{\scriptsize\arabic{FancyVerbLine}}}

% Boxing examples
\def\posskip{\vskip2pt plus 2pt minus 2pt}
\def\negskip{\vskip-8pt plus 2pt minus 2pt}
\newcommand{\fox}[1]{\noindent\framebox{\begin{minipage}{0.984\textwidth}#1\end{minipage}}\ignorespaces}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setCJKmainfont{Noto Serif CJK TC}
%\setmainfont{Noto Serif CJK TC}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\course{Operations Research}
\semester{Spring 2022 (110-2)}
\author{Tim Kuo\thanks{
\ntuim 
E-mail: \href{mailto:r10725025@ntu.edu.tw}{r10725025@ntu.edu.tw.}}, 
Yuan Ting Lin\thanks{
\ntuim 
E-mail: \href{mailto:b07705036@ntu.edu.tw}{b07705036@ntu.edu.tw.}},
Yu-Chieh Kuo\thanks{
\ntuim 
E-mail: \href{mailto:b07611039@ntu.edu.tw}{b07611039@ntu.edu.tw.}}
}
\endinput
%%
%% End of file `theme.sty'.