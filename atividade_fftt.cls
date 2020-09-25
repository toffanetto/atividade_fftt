%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%toffanetto%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Template para atividades acadêmicas diversas                 %
%----------------------------------LICENSE-----------------------------------%
%																			 %
%					      GNU GENERAL PUBLIC LICENSE                         %
%					       Version 3, 29 June 2007                           %
%                                                                            %
%  Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>      %
%  Everyone is permitted to copy and distribute verbatim copies              %
%  of this license document, but changing it is not allowed.                 %
%                                                                            %
% Author: Gabriel Toffanetto França da Rocha                                 %
% GitHub:                                                                    %
%                                                                            %
%----------------------------------------------------------------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atividade_fftt}[25/09/2020, v0.1]

\PassOptionsToPackage{svgnames}{xcolor}
\LoadClass[12pt, a4paper]{article}

% --------------------------------------------------- %
%                       Packages  	                  %
% --------------------------------------------------- %

\usepackage[utf8]{inputenc}
\usepackage[brazilian]{babel}
\usepackage[T1]{fontenc}
\usepackage{graphicx}
\usepackage{geometry}
\usepackage{tabto}
\usepackage{color,soul}
\usepackage{mathrsfs}                                           % letras matematicas especiais
\usepackage[linktoc=all]{hyperref}                              % link de pagina no sumário
\usepackage{amsmath}                                            % recursos matemáticos
\usepackage{indentfirst}                                        % Indenta o primeiro parágrafo de cada seção.
\usepackage[alf]{abntex2cite}	                                % Citações padrão ABNT
\DeclareRobustCommand{\hlcyan}[1]{{\sethlcolor{cyan}\hl{#1}}}
\usepackage[document]{ragged2e}
\usepackage{listings}                                           % Ambiente para código fonte


% --------------------------------------------------- %
%                      Listings 	                  %
% --------------------------------------------------- %

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,1,0.95}

\lstdefinestyle{default}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}
\lstset{style=default}

% --------------------------------------------------- %
%                   Configurações 	                  %
% --------------------------------------------------- %

\newcommand{\+}[1]{\ensuremath{\mathbf{#1}}} % comando para escrever matrizes em negrito \+A= A

\geometry{top=2.5cm, bottom=2.5cm, right=2cm, left=2cm}

% --------------------------------------------------- %
%                     Comandos  	                  %
% --------------------------------------------------- %

% \cabecalho
\newcommand{\cabecalho}{ 
    \begin{picture}(50,50)      %logo UNIFEI
        \put(200,10){
            \hbox{\includegraphics[scale=.5]{img/UNIFEI_LOGO.png}}
    }
    \end{picture}
    
    \center{\large{Universidade Federal de Itajubá}}
    \center{\textit{Campus} Itabira}
    \justify
    \noindent \Disciplina\\         %disciplina
    \noindent \today\\             %data
    \noindent Prof(a). \Professor \\  %professor
    \noindent Aluno(s):         %autores
    }

% \titulo
\newcommand{\titulo}{
    \vspace{.5cm}

    \center{\huge{\Titulo}}       %titulo
    \vspace{.3cm}
    \noindent\rule{17cm}{0.2pt}
    \justify
}

% \sumario
\newcommand{\sumario}{
    \tableofcontents            % SUMARIO 
    \vspace{.3cm}
    \noindent\rule{17cm}{0.2pt}
}

% \bibliografia
\newcommand{\bibliografia}{
    \newpage

    \addcontentsline{toc}{section}{Referências} % para mostrar as referências no sumário
    \bibliography{references.bib}
}

% \corpo
\newcommand{\corpo}{
    \include{corpo}
}

% \autor
\newcommand{\autor}[1][\Autor]{
    \begin{itemize}
        \item #1
    \end{itemize}
}