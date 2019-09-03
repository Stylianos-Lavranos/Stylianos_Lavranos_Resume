\ProvidesClass{English_Resume}[2019/08/30 CV class]
\LoadClass[usenames,dvipsnames,a4paper]{article}
\NeedsTeXFormat{LaTeX2e}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%PACKAGES%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[english]{babel}
\usepackage[T1]{fontenc}
\usepackage[dvipsnames]{xcolor}
\usepackage[absolute,overlay]{textpos}
\usepackage{ragged2e,etoolbox,ifmtarg,ifthen,pgffor,marvosym,parskip}
\RequirePackage[LGR,T1]{fontenc}
\RequirePackage{tikz}
\RequirePackage{xcolor}
\usepackage[export]{adjustbox}

%%%%%%%%%%%%%%%%
% Page Setting %
%%%%%%%%%%%%%%%%
\RequirePackage[left=7.1cm,top=0cm,right=0cm,bottom=0.2cm]{geometry}
\RequirePackage{hyperref}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%
%Defining Colors %
%%%%%%%%%%%%%%%%%%
\definecolor{white}{RGB}{255,255,255}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}
\definecolor{green}{HTML}{C2E15F}
\definecolor{red}{HTML}{FB0B00}
\definecolor{blue}{HTML}{6CE0F1}
\definecolor{mainblue}{HTML}{0E5484}
\definecolor{maingray}{HTML}{B9B9B9}
\ifdefined\@cv@print
  \colorlet{green}{gray}
  \colorlet{red}{gray}
  \colorlet{blue}{gray}
  \colorlet{fillheader}{white}
  \colorlet{alightgray}{lightgray}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{gray}
  \colorlet{header}{white}
  \colorlet{alightgray}{lightgray}
\fi
\colorlet{textcolor}{black}
\colorlet{headercolor}{black}

%%%%%%%%%%%%%%%%%%%%%%%%
% Profile left SideBar %
%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\TPHorizModule}{1cm}
\setlength{\TPVertModule}{1cm}
\newcommand{\imsize}{\linewidth}
\newlength\imagewidth
\newlength\imagescale
\renewcommand{\imsize}{0.718\linewidth}
\pgfmathsetlength{\imagewidth}{4cm}
\pgfmathsetlength{\imagescale}{\imagewidth/580}
\newcommand{\profilesection}[2]{{\noindent\color{black!80} \huge #1 \rule[0.2\baselineskip]{#2}
{0.5pt} \vspace{0pt}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Information As They Are Visually Presented%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\profilepic}[1]{\renewcommand{\givenprofilepic}{#1}}
\newcommand{\liqr}[1]{\renewcommand{\liqr}{#1}}
\newcommand{\cvname}[1]{\renewcommand{\givencvname}{#1}}
\newcommand{\cvjobtitle}[1]{\renewcommand{\givencvjobtitle}{#1}}
\newcommand{\cvdate}[1]{\renewcommand{\givencvdate}{#1}}
\newcommand{\cvnationality}[1]{\renewcommand{\givencvnationality}{#1}}
\newcommand{\cvaddress}[1]{\renewcommand{\givencvaddress}{#1}}
\newcommand{\cvnumberphone}[1]{\renewcommand{\givennumberphone}{#1}}
\newcommand{\cvmail}[1]{\renewcommand{\givencvmail}{#1}}
\newcommand{\cvdriverslicense}[1]{\renewcommand{\givencvdriverslicense}{#1}}
\newcommand{\cvmilitary}[1]{\renewcommand{\givencvmilitary}{#1}}
\newcommand{\cvsite}[1]{\renewcommand{\givencvsite}{#1}}
\newcommand{\cvfacebook}[1]{\renewcommand{\givenfacebook}{#1}}
\newcommand{\cvlinkedin}[1]{\renewcommand{\givenlinkedin}{#1}}
\newcommand{\cvgithub}[1]{\renewcommand{\givencvgithub}{#1}}
\newcommand{\aboutme}[1]{\renewcommand{\givenaboutme}{\!\!\!\!\justifying#1}}
\newcommand{\givenprofilepic}{}
\newcommand{\givenliqr}{}
\newcommand{\givencvname}{REQUIRED!}
\newcommand{\givencvjobtitle}{}
\newcommand{\givencvdate}{}
\newcommand{\givencvnationality}{}
\newcommand{\givencvaddress}{}
\newcommand{\givennumberphone}{}
\newcommand{\givencvdriverslicense}{}
\newcommand{\givencvmilitary}{}
\newcommand{\givencvmail}{}
\newcommand{\givencvsite}{}
\newcommand{\givenlinkedin}{}
\newcommand{\givencvgithub}{}
\newcommand{\givenfacebook}{}
\newcommand{\givenaboutme}{}

\newcommand*\icon[1]{\tikz[baseline=(char.base)]{
\node[shape=circle,draw,inner sep=0.3pt,fill=mainblue,Fuchsia,text=alightgray] (char) {#1};}}

\newcommand*\round[2]{
  \tikz[baseline=(char.base)]\node[anchor=north west, draw,rectangle, rounded corners, inner sep=1.8pt, minimum size=5mm, text height=4.7mm,  fill=#2,#2,text=white](char){#1} ;}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Modifying commands for the bar of each skill%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\skills[1]{\renewcommand{\givenskill}{\!\!\!\justifying\large
	\foreach [count=\i] \x in {#1}
	{
	\x\\
	}
	\noindent
	}
	}
\newcommand{\givenskill}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Modifying commands for skills without bar%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\skillstext[1]{
\renewcommand{\giventextskill}{\large
\foreach [count=\i] \x in {#1}
{
\x
}
}
}
\newcommand{\giventextskill}{}

\newcommand\intereststext[1]{
\renewcommand{\givenintereststext}{\large
\foreach [count=\i] \x in {#1}
{
\x
}
}
}
\newcommand{\givenintereststext}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%creating the profile command of the sidebar%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeprofile}
{
\begin{tikzpicture}[remember picture,overlay]
   	 \node [rectangle, fill=lightgray, anchor=north, minimum width=9.90cm, minimum height=\paperheight+1cm] (box) at (-5cm,0.5cm){};
\end{tikzpicture}

\begin{textblock}{6}(0.4, 0.2)

\begin{tikzpicture}[x=\imagescale,y=-\imagescale]
	\hspace{20pt}
    \clip (0, -60) circle (280);
    \node[anchor=center, inner sep=0pt, outer sep=0pt] at (0,0) {\includegraphics[width=\imagewidth]{\givenprofilepic}};
\end{tikzpicture}

\vspace{-110pt}
\hspace{135pt}
\includegraphics[width=40pt]{liqr}

\vspace{5pt}
\hspace{135pt}
\includegraphics[width=40pt]{Github-QR}
\vspace{-2pt}

\begin{flushleft}
\hspace{-3pt}
{\color{mainblue}\givencvname}

\vspace{-1pt}
\hspace{-12pt}
{\Large\color{mainblue}\givencvjobtitle}

\vspace{-4pt}
\renewcommand{\arraystretch}{1}

%%%%%%%%%%%%%
%Icon Matrix%
%%%%%%%%%%%%%
\begin{tabular}{p{5pt} @{\vspace{1.5pt}\hskip 0.5cm}p{6cm}}
\ifthenelse{\equal{\givencvdate}{}}{}{\textsc{\Large\icon{\Info}} & \givencvdate\\}
\ifthenelse{\equal{\givencvnationality}{}}{}{\textsc{\large\icon{\includegraphics[width=12.5pt]{Flag_of_Greece}}} & \large\givencvnationality\\}
\ifthenelse{\equal{\givencvaddress}{}}{}{\textsc{\Large\icon{\Letter}} & \givencvaddress\\}
\ifthenelse{\equal{\givennumberphone}{}}{}{\textsc{\Large\icon{\Telefon}} & \normalsize\givennumberphone\\}
\ifthenelse{\equal{\givencvdriverslicense}{}}{}{\textsc{\normalsize\icon{\faCar}} & \large\givencvdriverslicense\\}
\ifthenelse{\equal{\givencvmilitary}{}}{}{\textsc{\large\icon{\faFighterJet}} & \large\givencvmilitary\\}
\ifthenelse{\equal{\givencvmail}{}}{}{\textsc{\Large\icon{@}} & \href{mailto:\givencvmail}{\large\givencvmail}\\}
\ifthenelse{\equal{\givencvgithub}{}}{}{\textsc{\large\icon{\faGithub}} & \normalsize\href{https://\givencvgithub }{\large\givencvgithub}\\}
\ifthenelse{\equal{\givenlinkedin}{}}{}{\textsc{\large\icon{\faLinkedin}} & \large\href{https://www.linkedin.com/in/stylianos-l-534186129}{\large\givenlinkedin}\\}
\end{tabular}

%%%%%%%%%%%%%%%%%%%%%%%
%Left Profile Sections%
%%%%%%%%%%%%%%%%%%%%%%%
\profilesection{\vspace{1pt}\Large\color{mainblue}{About Me}}{4cm}
\givenaboutme

\profilesection{\vspace{2pt}\Large\color{mainblue}{Skills}}{4.9cm}
\givenskill
\noindent
\large
\vspace{-16pt}

\profilesection{\vspace{-12pt}\Large\color{mainblue}{Personality Traits}}{2.4cm}
\giventextskill
\noindent
\large
\noindent

\profilesection{\vspace{-12pt}\Large\color{mainblue}{Interests}}{4.32cm}
\givenintereststext
\noindent
\large
\noindent

\end{flushleft}
\end{textblock}
\vspace{-10pt}
 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Main Body's Section Color box %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcounter{colorCounter}
\def\@sectioncolor#1#2#3{
  {
   \round{#1#2#3}{
      \ifcase\value{colorCounter}%DO NOT REMOVE THIS PERCENTAGE SYMBOL!
		Green\or
        green!150\or
		DarkOrchid\or
        Fuchsia\fi
    }
  }
  \stepcounter{colorCounter}
}

\renewcommand{\section}[1]{
  \par\vspace{0pt}
  {
    \LARGE\color{headercolor}
    \@sectioncolor #1
  }
  \par\vspace{-2pt}
}

\renewcommand{\subsection}[1]{
  \par\vspace{-2pt}
  {%
  \large\color{headercolor} #1
  }
  \par\vspace{-2pt}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% List twenty environment %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\tabcolsep}{0pt}
\newenvironment{twenty}{
\vspace{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
  \end{tabular*}
\vspace{-5pt}
}

\renewcommand{\bfseries}{\color{headercolor}}
\newcommand{\twentyitem}[4]{
	\hspace{5pt}\!\!\!\normalsize\color{mainblue}#1&\parbox[t]{11.75cm}{
	\textbf{\normalsize #2}
	\hfill
	{\color{mainblue!80}{\underline{\normalsize #3}\hspace{3pt}}}\\
	{\normalsize #4}\vspace{5pt}
  }\\}
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Small twenty List environment center of the tabular %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\tabcolsep}{0pt}
\newenvironment{twentyshort}{
  \vspace{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{
  \end{tabular*}
  \vspace{-5pt}
}
\renewcommand{\bfseries}{\color{headercolor}}
\newcommand{\twentyitemshort}[2]{
  \vspace{5pt}\hspace{5pt}\normalsize\!\!\!\color{mainblue}#1&\parbox[t]{11.75cm}{
    \textbf{\normalsize #2}
  }\\}
