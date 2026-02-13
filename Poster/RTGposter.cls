% documentclass for posters for the prolongation of the RTG 2553
% in 12/2023
% version 2
%
% Johannes Sprang (johannes.sprang@uni-due.de)
% based on a previous template of Ulrich Görtz
%
% Don't edit this file unless you know what you are doing :)
\ProvidesClass{RTGposter}

\LoadClass[25pt, a0paper, portrait, margin=0mm, innermargin=15mm,
    blockverticalspace=15mm, colspace=15mm, subcolspace=8mm]{tikzposter}
    
\RequirePackage{amsmath,amsthm}
%\RequirePackage{ntheorem}
\RequirePackage{amssymb}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{lipsum}
\RequirePackage{microtype}
\RequirePackage{helvet}
\RequirePackage[helvet]{sfmath}
\RequirePackage{mathrsfs}
\RequirePackage{xcolor}
\RequirePackage[absolute]{textpos} % for textblock
\renewcommand*{\familydefault}{\sfdefault}

\RequirePackage{adjustbox}
\tikzposterlatexaffectionproofoff


%Define variables used in the title
\def\p@steradvisor{\phantom{.}}
\def\p@stersecondadvisor{\phantom{.}}
\def\p@sterposition{\phantom{.}}
\def\p@sterperiod{\phantom{.}}
\def\p@sterlast_degree{\phantom{.}}
\def\p@sterfunding{\phantom{.}}


\def\advisor#1{%
\ifx&#1&%
  % #1 is empty
  \def\p@steradvisor{\phantom{ 1. Advisor:}}
\else
  \def\p@steradvisor{ 1. Advisor: #1,}
\fi
}

\def\secondadvisor#1{%
\ifx&#1&%
  % #1 is empty
  \def\p@stersecondadvisor{\phantom{ 2. Advisor:}}
\else
  \def\p@stersecondadvisor{ 2. Advisor: #1.}
\fi
}

\def\position#1{%
\ifx&#1&%
  % #1 is empty
  \def\p@sterposition{\phantom{.}}
\else
  \def\p@sterposition{#1}
\fi
}

\def\period#1{%
\ifx&#1&%
  % #1 is empty
  \def\p@sterperiod{\phantom{.}}
\else
  \def\p@sterperiod{ (#1)}
\fi
}

\def\last_degree#1{%
\ifx&#1&%
  % #1 is empty
  \def\p@sterlast_degree{\phantom{.}}
\else
  \def\p@sterlast_degree{#1}
\fi
}

\def\funding#1{%
\ifx&#1&%
  % #1 is empty
  \def\p@sterfunding{\phantom{.}}
\else
  \def\p@sterfunding{Funding: #1}
\fi
}

\institute{}
\titlegraphic{\includegraphics[width=25cm]{esagalogo}}

\makeatletter
\renewcommand\TP@maketitle{%
	%UDE logo
	\begin{minipage}{\linewidth}
		\includegraphics[width=\linewidth]{UDE_poster_cropped}
	\end{minipage}
	\hspace*{3cm}\begin{minipage}{0.5\linewidth}
		%\vspace{-12.5cm}\huge {\color{white}\bf RTG 2553:\\ Symmetries and classifying spaces:\\ Analytic, arithmetic and derived}
		% \vspace{-12.5cm}\Huge {\color{white}\bf Higgs bundles on stacky curves}
	\end{minipage}
    
    %Title of the project
    \begin{minipage}{\linewidth}
    	\vspace*{2cm}
    	\centering
    	{\Huge \@title}
    \end{minipage}
    
    %Information about the author
    \begin{minipage}{0.4\linewidth}
    	\vspace*{1cm}
        {\huge \@author \phantom{.}} \\[0.5cm]{\Large \color{black!50}\p@sterposition  \p@sterperiod \\ \p@sterfunding \\ \p@sterlast_degree}
    \end{minipage}
    \begin{minipage}{0.3\linewidth}
    	\vspace*{3.5cm}
        {\color{black!50}\Large \p@steradvisor \\ \p@stersecondadvisor \par}
    \end{minipage}
    \begin{minipage}{0.3\linewidth}
    	\vspace{2cm}
    	 \@titlegraphic
    \end{minipage}
}
\makeatother


\definecolor{UDEblue}{RGB}{0,76,147}
\definecolor{ESAGAblue}{HTML}{00a2ce}
\definecolor{UDEbeige}{HTML}{efe4bf}

% redefine \emph
\def\emph#1{%
  {\textsf{\textit{\color{ESAGAblue}#1}}}%
}

% -- PREDEFINED THEMES ---------------------- %
% Choose LAYOUT:  Default, Basic, Rays, Simple, Envelope, Wave, Board, Autumn, Desert,
\usetheme{Default}
\usetitlestyle{Filled}
\usenotestyle{Sticky}
\colorlet{blockbodybgcolor}{white}
\colorlet{backgroundcolor}{white}
\usebackgroundstyle{Default}

\definecolor{colorNote}{HTML}{FCE565}
\colorlet{notefgcolor}{black}
\colorlet{notebgcolor}{colorNote!40!white}
\colorlet{notefrcolor}{colorNote!60!white}
% \usecolorstyle[colorPalette=BrownBlueOrange]{Germany}


% thm envs
\RequirePackage{amsthm}
\newtheoremstyle{UDEthm}{1cm}{1cm}{\sf}{}{\color{UDEblue}\sf\bfseries}{.}{ }{}

\theoremstyle{UDEthm}
\newtheorem{theorem}{Theorem}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}

\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}
\newtheorem{caveat}[theorem]{Caveat}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{convention}[theorem]{Convention}
\newtheorem{question}[theorem]{Question}
\newtheorem{conjecture}[theorem]{Conjecture}
\newtheorem{problem}[theorem]{Problem}
\newtheorem{axioms}[theorem]{Axioms}
\newtheorem{algorithm}[theorem]{Algorithm}
\newtheorem{notation}[theorem]{Notation}

\newtheorem*{theorem*}{Theorem}
\newtheorem*{proposition*}{Proposition}
\newtheorem*{corollary*}{Corollary}
\newtheorem*{lemma*}{Lemma}

\newtheorem*{definition*}{Definition}
\newtheorem*{example*}{Example}
\newtheorem*{caveat*}{Caveat}
\newtheorem*{remark*}{Remark}
\newtheorem*{convention*}{Convention}
\newtheorem*{question*}{Question}
\newtheorem*{conjecture*}{Conjecture}
\newtheorem*{problem*}{Problem}
\newtheorem*{axioms*}{Axioms}
\newtheorem*{algorithm*}{Algorithm}
\newtheorem*{notation*}{Notation}


% defines two Blocks in the corporate design of the UDE
\defineblockstyle{NotationBlock}{
    titlewidthscale=1, bodywidthscale=1, titlecenter,
    titleoffsetx=0pt, titleoffsety=0pt, bodyoffsetx=0pt, bodyoffsety=0pt,
    bodyverticalshift=-1.2cm, roundedcorners=0, linewidth=1.2pt,
    titleinnersep=1cm, bodyinnersep=1cm
}{
    \ifBlockHasTitle%
        \coordinate (toprightblock) at (blocktitle.north east);
    \else
        \coordinate (toprightblock) at (blockbody.north east);
    \fi%
    \draw[color=blocktitlebgcolor, fill=blockbodybgcolor,%
        line width=\blocklinewidth, drop shadow={shadow xshift=0.2cm, shadow yshift=-0.2cm,opacity=0.3}, %
        decorate, decoration={random steps,segment length=1.5cm,amplitude=0.15cm}
        % decorate, decoration={penciline,amplitude=0.2cm}
    ] (blockbody.south west) rectangle (toprightblock);%
}

\defineblockstyle{NotationBlockSimple}{
    titlewidthscale=1, bodywidthscale=1, titlecenter,
    titleoffsetx=0pt, titleoffsety=0pt, bodyoffsetx=0pt, bodyoffsety=0pt,
    bodyverticalshift=-1.2cm, roundedcorners=0, linewidth=1.2pt,
    titleinnersep=1cm, bodyinnersep=1cm
}{
    \ifBlockHasTitle%
        \coordinate (toprightblock) at (blocktitle.north east);
    \else
        \coordinate (toprightblock) at (blockbody.north east);
    \fi%
    \draw[color=blocktitlebgcolor, fill=blockbodybgcolor,%
        line width=\blocklinewidth, drop shadow={shadow xshift=0.2cm, shadow yshift=-0.2cm,opacity=0.3}, %
        decorate, %decoration={random steps,segment length=1.5cm,amplitude=0.15cm}
        % decorate, decoration={penciline,amplitude=0.2cm}
    ] (blockbody.south west) rectangle (toprightblock);%
}

\long\def\RTGBlock#1#2{
	\useblockstyle{Default}
	\usetitlestyle{Filled}
	\usenotestyle{Sticky}
	\colorlet{blockbodybgcolor}{white}
	\colorlet{backgroundcolor}{white}
	\usecolorstyle{Default}
	%define color scheme
	\colorlet{blocktitlebgcolor}{UDEblue}
	\colorlet{notefgcolor}{black}
	\colorlet{notebgcolor}{colorNote!40!white}
	\colorlet{notefrcolor}{colorNote!60!white}
	\block[roundedcorners=10]{#1}{%
	%the \item\vspace{-3cm} is an ugly work around for a conflict between amsthm and tikposter, see:
	% https://tex.stackexchange.com/questions/562691/paragraph-ended-before-error-in-tex
    	\phantom{.}\item\phantom{.}\par \vspace{-2cm}
    	#2
   }
}

\long\def\RTGBlockThin#1#2{
	\useblockstyle{Default}
	\usetitlestyle{Filled}
	\usenotestyle{Sticky}
	\usecolorstyle{Default}
	%define color scheme
	\colorlet{blockbodybgcolor}{white}
	\colorlet{backgroundcolor}{white}
	\colorlet{blocktitlebgcolor}{UDEblue}
	\colorlet{notefgcolor}{black}
	\colorlet{notebgcolor}{colorNote!40!white}
	\colorlet{notefrcolor}{colorNote!60!white}
	\block[roundedcorners=10,linewidth=0.2cm,titleinnersep=0.4cm]{#1}{%
	%the \item\vspace{-3cm} is an ugly work around for a conflict between amsthm and tikposter, see:
	% https://tex.stackexchange.com/questions/562691/paragraph-ended-before-error-in-tex
    	\phantom{.}\item\phantom{.}\par \vspace{-2cm}
    	#2
   }
}

\long\def\WhiteBlock#1#2{
	\useblockstyle{NotationBlock}
	\usetitlestyle{Filled}
	\usenotestyle{Sticky}
    \usecolorstyle{Britain}
    % define color scheme
    \colorlet{blockbodybgcolor}{white}
	\colorlet{backgroundcolor}{white}
	\colorlet{notefgcolor}{black}
	\colorlet{notebgcolor}{colorNote!40!white}
	\colorlet{notefrcolor}{colorNote!60!white}
    \block[roundedcorners=10]{#1}{%
	%the \item\vspace{-3cm} is an ugly work around for a conflict between amsthm and tikposter, see:
	% https://tex.stackexchange.com/questions/562691/paragraph-ended-before-error-in-tex
    	\phantom{.}\item\phantom{.}\par \vspace{-2cm}
    	#2
   }
}

\long\def\WhiteBlockSimple#1#2{
	\useblockstyle{NotationBlockSimple}
    \usecolorstyle{Britain}
    % define color scheme
    \colorlet{blockbodybgcolor}{white}
	\colorlet{backgroundcolor}{white}
	\colorlet{notefgcolor}{black}
	\colorlet{notebgcolor}{colorNote!40!white}
	\colorlet{notefrcolor}{colorNote!60!white}
    \block[roundedcorners=10]{#1}{%
	%the \item\vspace{-3cm} is an ugly work around for a conflict between amsthm and tikposter, see:
	% https://tex.stackexchange.com/questions/562691/paragraph-ended-before-error-in-tex
    	\phantom{.}\item\phantom{.}\par \vspace{-2cm}
    	#2
   }
}

\long\def\FundingAndAcknowledgement{%
	\coordinate (bottomright) at (topright |- bottomleft);
	\node [above right,
	       outer sep=0pt,
	       minimum width=25cm,
	       minimum height=1.5cm,
	       align=left,font=\large,
	       draw,fill=white,opacity=0.5] at (bottomleft) {Background photo: Timo Bobert, Max Greve}; 
	\node [above left,
	       outer sep=0pt,
	       minimum width=13cm,
	       minimum height=1.5cm,
	       align=left,font=\large,fill=white,opacity=0.8] at (bottomright) [xshift=0cm] {\includegraphics[height=4cm]{dfg_logo}}; 
}

%environment for references
\newenvironment{posterbib}
               {\vspace*{-2cm}\begin{thebibliography}{100}%
                   \setlength\labelsep{0.5cm}%
                   \large%
               }
               {\end{thebibliography}}