% /$$$$$$$$ /$$$$$$  /$$$$$$$$ /$$$$$$$$ /$$$$$$  /$$   /$$ /$$$$$$$$ /$$$$$$$$ /$$$$$$$$ /$$$$$$ 
%|__  $$__//$$__  $$| $$_____/| $$_____//$$__  $$| $$$ | $$| $$_____/|__  $$__/|__  $$__//$$__  $$
%   | $$  | $$  \ $$| $$      | $$     | $$  \ $$| $$$$| $$| $$         | $$      | $$  | $$  \ $$
%   | $$  | $$  | $$| $$$$$   | $$$$$  | $$$$$$$$| $$ $$ $$| $$$$$      | $$      | $$  | $$  | $$
%   | $$  | $$  | $$| $$__/   | $$__/  | $$__  $$| $$  $$$$| $$__/      | $$      | $$  | $$  | $$
%   | $$  | $$  | $$| $$      | $$     | $$  | $$| $$\  $$$| $$         | $$      | $$  | $$  | $$
%   | $$  |  $$$$$$/| $$      | $$     | $$  | $$| $$ \  $$| $$$$$$$$   | $$      | $$  |  $$$$$$/
%   |__/   \______/ |__/      |__/     |__/  |__/|__/  \__/|________/   |__/      |__/   \______/ 

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
% GitHub: https://github.com/toffanetto/atividade_fftt                       %
%                                                                            %
%----------------------------------------------------------------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atividade_fftt}[08/03/2024, v2]

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
\usepackage{xcolor}
\usepackage{mathrsfs} % letras matematicas especiais
\usepackage[linktoc=all]{hyperref} % link de pagina no sumário
\usepackage{amsmath} % recursos matemáticos
\usepackage{amssymb} % recursos matemáticos
\usepackage{indentfirst} % Indenta o primeiro parágrafo de cada seção.
\usepackage[alf]{abntex2cite} % Citações padrão ABNT
\DeclareRobustCommand{\hlcyan}[1]{{\sethlcolor{cyan}\hl{#1}}}
\usepackage[document]{ragged2e}
\usepackage{listings} % Ambiente para código fonte
\usepackage{multicol}
\usepackage{caption}
\usepackage{subcaption}
\usepackage{svg} % SVG pictures include
\usepackage{float} % H image float mode
\usepackage{multirow} % Table cell merge
\usepackage[makeroom]{cancel}
\usepackage{fancyhdr}
\usepackage{nameref}
%\usepackage{refcheck} % Verify about not used labels



% --------------------------------------------------- %
%                      Fontes   	                  %
% --------------------------------------------------- %

% \usepackage{mathptmx} % Times New Roman
% \usepackage{helvet}   % Arial 
% \usepackage{lmodern}	% Latin Modern


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
    tabsize=2,
    inputencoding=utf8,
    extendedchars=true,    
    literate={á}{{\'a}}1 {Á}{{\'A}}1 {ã}{{\~a}}1 {â}{{\^{a}}}1 {Â}{{\^{A}}}1 {Ã}{{\~A}}1 {é}{{\'e}}1 {ê}{{\^e}}1 {É}{{\'E}}1 {ç}{{\c{c}}}1 {Ç}{{\c{C}}}1 {í}{{\'i}}1 {ó}{{\'o}}1,
}
\lstset{style=default}

% --------------------------------------------------- %
%                   Configurações 	                  %
% --------------------------------------------------- %

\newcommand{\+}[1]{\ensuremath{\mathbf{#1}}} % comando para escrever matrizes em negrito \+A= A

\renewcommand{\lstlistingname}{Código}% Listing -> Código
\renewcommand{\lstlistlistingname}{Lista de \lstlistingname s}% List of Listings -> Lista de Códigos

\makeatletter
\newcommand*{\currentname}{\@currentlabelname} % get section name
\makeatother

\makeatletter
    \renewcommand*{\ps@plain}{%
      \let\@mkboth\@gobbletwo
      \let\@oddhead\@empty
      \def\@oddfoot{%
        \reset@font
        \footnotesize{\Autor} % commented in case of more than one author
        \hfil
        \normalsize{\thepage}
        % \hfil % removed for aligning to the right
      }%
      \let\@evenhead\@empty
      \let\@evenfoot\@oddfoot
    }
\makeatother

\geometry{top=2cm, bottom=2cm, right=2cm, left=2cm}

% --------------------------------------------------- %
%                     Comandos  	                  %
% --------------------------------------------------- %

% \header
\newcommand{\header}{ 
    \pagestyle{fancy}
    \fancyhf{}
    \fancyhead[L]{\footnotesize{\TituloShort}}
    \fancyhead[C]{\footnotesize{Universidade Estadual de Campinas}}
    \fancyhead[R]{\footnotesize{\DisciplinaCOD}}
    }
    
% \removeheader
\newcommand{\removeheader}{ 
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    }
    
% \footer
\newcommand{\footer}{ 
    \fancyfoot[R]{\thepage}
    }
    
% \footerauthor
\newcommand{\footerauthor}{ 
    \fancyfoot[R]{\thepage}
    \fancyfoot[L]{\footnotesize{\Autor}}
    }
    
% \cabecalho
\newcommand{\cabecalho}{ 
    \thispagestyle{empty}
    \header
    \footer
    
    \begin{picture}(50,50)      %logo UNICAMP
        \put(200,-30){
            \hbox{\includegraphics[scale=.25]{img/core/logo_unicamp.pdf}}
    }
    \end{picture}

    \vspace{1cm}
    
    \center{\large{Universidade Estadual de Campinas}} 
    \center{\Faculdade}
    \justify
     \noindent \textbf{\DisciplinaCOD \space -- \Disciplina}    \hfill \today \\    %disciplina \\ data
    
    \noindent Docente: \Professor \\  %professor
    
    \noindent Discentes:        %autores
    }
  
% \cabecalholite  
\newcommand{\cabecalholite}{ 
    \thispagestyle{empty}
    \header
    \footer
    
    \center{\Large{Universidade Estadual de Campinas}}
    \center{\Faculdade}
    \justify
    \noindent \textbf{\DisciplinaCOD \space -- \Disciplina}    \hfill \today \\    %disciplina \\ data
    \noindent Docente \Professor \\  %professor
    \noindent Discentes:        %autores
    }

% \cabecalhoalone
\newcommand{\cabecalhoalone}{ 
    \thispagestyle{empty}
    \header
    \footerauthor
    
    \begin{picture}(50,50)      %logo UNICAMP
        \put(200,-30){
            \hbox{\includegraphics[scale=.25]{img/core/logo_unicamp.pdf}}
    }
    \end{picture}

    \vspace{1cm}
    
    \center{\large{Universidade Estadual de Campinas}}
    \center{\Faculdade}
    \justify
     \noindent \textbf{\DisciplinaCOD \space -- \Disciplina}    \hfill \today \\    %disciplina \\ data
    
    \noindent Docente: \Professor \\  %professor
    
    \noindent Discente:        %autores
    }
    
% \cabecalholitealone
\newcommand{\cabecalholitealone}{ 
    \thispagestyle{empty}
    \header
    \footerauthor
    
    \center{\Large{Universidade Estadual de Campinas}}
    \center{\Faculdade}
    \justify
     \noindent \textbf{\DisciplinaCOD \space -- \Disciplina}    \hfill \today \\    %disciplina \\ data
    \noindent Docente: \Professor \\  %professor
    \noindent Discente:        %autores
    }
    
% \titulo
\newcommand{\titulo}{
    \vspace{.5cm}

    \center{\huge{\Titulo}}       %titulo
    \vspace{.3cm}
    \noindent\rule{\textwidth}{0.2pt}
    \justify
}

% \titulolite
\newcommand{\titulolite}{

    \center{\LARGE{\Titulo}}       %titulo
    \noindent\rule{\textwidth}{0.2pt}
    \justify
}

% \sumario
\newcommand{\sumario}{
    \tableofcontents            % SUMARIO 
    \vspace{.3cm}
    \noindent\rule{\textwidth}{0.2pt}
}

% \bibliografia
\newcommand{\bibliografia}{
    \clearpage
    \addcontentsline{toc}{section}{Referências} % para mostrar as referências no sumário
    \thispagestyle{plain}
    \bibliography{references.bib}
}

% \bibliografia in text
\newcommand{\bibliografiaintext}{
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

% \espacamentoumemeio
\newcommand{\espacamentoumemeio}{
    \onehalfspacing
}

% \timesneweoman
\newcommand{\timesnewroman}{
    \usepackage{mathptmx} % Times New Roman
}

% \arial
\newcommand{\arial}{
    \usepackage{helvet}   % Arial
}

% \latinmodern
\newcommand{\latinmodern}{
    \usepackage{lmodern}	% Latin Modern
}

% \tracolista
\newcommand{\tracolista}{
    \def\labelitemi{--}     % usa caracter no itemize
}


\newcommand{\colunadivisao}{
    \setlength{\columnseprule}{.5pt}
    \def\columnseprulecolor{\color{black}}      % linha vertical para dividir as colunas
}


\newcommand{\pdfconfig}{
    \hypersetup{
     	%pagebackref=true,
		pdftitle={\Titulo}, 
		pdfauthor={\Autor},
    	pdfsubject={\Disciplina},
	    pdfcreator={LaTeX with Overleaf},
		pdfkeywords={atividade_fftt}, 
		colorlinks=true,       	
            linkcolor=black,
            filecolor=black,      
            urlcolor=cyan,      
            citecolor=black,
		bookmarksdepth=4
}
}

% \anexos
\newcommand{\anexos}{
    \clearpage
    \include{anexos}
}

