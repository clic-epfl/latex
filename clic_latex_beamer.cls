% ---------------------------------------
%	Template Declaration
% ---------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{clic_latex_beamer}[2014/06/03 CLIC's Latex beamer template]

% ---------------------------------------
%	Load base class
% ---------------------------------------
\LoadClass[12pt]{beamer}

% ---------------------------------------
%	Load required packages
% ---------------------------------------
%For French stuff
\RequirePackage[french]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
%Creative commons icons
\RequirePackage{ccicons} 
%Embed LaTeX code
\RequirePackage{listings}
%Adds additional symbols such as \danger
\RequirePackage{fourier}

% ---------------------------------------
%	Theme customization
% ---------------------------------------

%List of available themes and colors: http://www.hartwork.org/beamer-theme-matrix/
\usetheme{Copenhagen}
\usecolortheme{beaver}
%Some more customization
\setbeamercolor{item}{fg=red}

%Flat design for items bullets (cf. http://tex.stackexchange.com/questions/52123/beamer-increase-radius-of-circle-in-toc-and-include-subsection-bullet)
\setbeamertemplate{items}[circle]
\setbeamertemplate{section in toc}[circle]
\setbeamertemplate{subsection in toc}
{\leavevmode\leftskip=2em%
  \llap{%
    \usebeamerfont*{section number projected}%
    \usebeamercolor{section number projected}%
    \begin{pgfpicture}{-1ex}{0ex}{1ex}{1ex}
      \color{bg}
      \pgfpathcircle{\pgfpoint{0pt}{1ex}}{0.5ex}
      \pgfusepath{fill}
    \end{pgfpicture}\kern1.25ex%
  }%
  \inserttocsubsection\par}

%Display table of content for each section at the beginning of the section
\AtBeginSection[]
{
  \begin{frame}
    \frametitle{\insertsection}
    \tableofcontents[currentsection, sectionstyle=show/hide, subsectionstyle=show/show/hide]
  \end{frame}
}

%Add CLIC's logo on every page
\logo{\includegraphics[height=1cm]{illustrations/logo_clic.eps}}

%Options for listings package
\lstset
{
    language=[LaTeX]TeX,
    breaklines=true,
    basicstyle=\tt\scriptsize,
    inputencoding=utf8,
    %keywordstyle=\color{blue},
    %identifierstyle=\color{red}
}

%
%\setbeamercolor{alerted text}{fg=yellow} 



