%--------------------------------------------------------------------------------------------------------------
%
% cssheet.cls
%
% author: Christian Spannagel
% version: 1.02
% license: CC0
%
%--------------------------------------------------------------------------------------------------------------

\ProvidesClass{cssheet}
\PassOptionsToPackage{12pt,a4paper,oneside,ngerman}{article}
\LoadClassWithOptions{article}
\ProcessOptions\relax
\RequirePackage[T1]{fontenc}
\RequirePackage[default]{raleway}
\RequirePackage[a4paper, left=25mm, right=25mm, top=30mm, bottom=25mm, headheight=30mm]{geometry}
\RequirePackage{ngerman}
\RequirePackage{textcomp}
\RequirePackage{comment}
\RequirePackage{enumerate}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{epstopdf}
\RequirePackage{titling}
\RequirePackage[backend=biber,style=apa]{biblatex}
\DeclareFieldFormat{apacase}{#1}
\DeclareLanguageMapping{ngerman}{ngerman-apa}
\RequirePackage[singlespacing]{setspace}
\RequirePackage[plainpages=false,pdfborder={0 0 0}]{hyperref}
\newcommand{\inlinequote}[2]{\glqq{}#1\grqq{} #2}
\graphicspath{{../../logos/}}

%--------------------------------------------------------------------------------------------------------------
% pagestyles
%--------------------------------------------------------------------------------------------------------------

\fancyhf{}
\fancyhead[L]{\theorganisation\\ \theauthor \\ \theemail}
\fancyhead[R]{\thelogo}
\fancyfoot[C]{Seite \thepage}
\fancypagestyle{docstyle}{%
   \fancyhf{}
   \renewcommand{\headrulewidth}{0pt}
   \fancyfoot[C]{Seite \thepage}
}
\setlength{\parskip}{1 em} % fügt Leerzeile zwischen Absätzen ein
\setlength{\parindent}{0 em}

% hyperreferences
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=blue,
    pdftitle={Overleaf Example},
    pdfpagemode=FullScreen,
    }
    
% commands for metadata
\author{Prof. Dr. Christian Spannagel}
\date{\today}
\newcommand{\thekeywords}{}
\newcommand{\setkeywords}[1]{\renewcommand{\thekeywords}{#1}}
\newcommand{\thesubject}{}
\newcommand{\setsubject}[1]{\renewcommand{\thesubject}{#1}}
\newcommand{\theemail}{spannagel@ph-heidelberg.de}
\newcommand{\setemail}[1]{\renewcommand{\theemail}{#1}}
\newcommand{\theorganisation}{Pädagogische Hochschule Heidelberg}
\newcommand{\setorganisation}[1]{\renewcommand{\theorganisation}{#1}}
\newcommand{\theinstitution}{Institut für Mathematik und Informatik}
\newcommand{\setinstitution}[1]{\renewcommand{\theinstitution}{#1}}
\newcommand{\thesubtitle}{}
\newcommand{\setsubtitle}[1]{\renewcommand{\thesubtitle}{#1}}
\newcommand{\thelogo}{\includegraphics[height=15mm]{phhd.eps}}
\newcommand{\setlogo}[1]{\renewcommand{\thelogo}{#1}}

\newcommand{\setpdfmetadata}{%
    \hypersetup{pdfauthor={\theauthor},%
    pdftitle={\thetitle},%
    pdfsubject={\thesubject},%
    pdfkeywords={\thekeywords}
}
}


% bibliography
\bibliography{../literature.bib}
%\bibliographystyle{plain}
\nocite{*}
%\defbibheading{references}[\refname]{\subsection{#1}
%   \markboth{#1}{#1}}


% title page
\newcommand{\printtitle}{%
   \pagenumbering{arabic}
   \pagestyle{fancy}
   \begin{center}
   {\LARGE\textbf{\thetitle}}
   \end{center}
}
\newcommand{\printsubtitle}{%
   \begin{center}
   {\Large\textbf{\thesubtitle}}
   \end{center}
}

% footer elements
\newcommand{\printlicense}{%
  \includegraphics[height=10mm]{cc-zero.png}\\
  \tiny{This document is subject to the Creative Commons Zero (CC0) License.\\ To create this document, we used \LaTeX{}.}
}

\newcommand{\printsocials}{%
Christians Social Media Kanäle:\\
BeReal: \url{https://bere.al/cspannagel}\\
Bluesky: \url{https://bsky.app/profile/cspannagel.bsky.social}\\
Discord: \url{https://tinyurl.com/chrisp-discord}\\
Facebook: \url{https://www.facebook.com/chr.spannagel}\\
Instagram: \url{https://www.instagram.com/dunkelmunkel/}\\
LinkedIn: \url{https://www.linkedin.com/in/christian-spannagel-31b7b4a1/}\\
Mastodon: \url{https://scholar.social/@cspannagel}\\
Snapchat: \url{https://www.snapchat.com/add/spannagelc}\\
Telegram: \url{https://t.me/cspannagel}\\
Tellonym: \url{https://tellonym.me/christian.spannagel}\\
TikTok: \url{https://www.tiktok.com/@_cspannagel_}\\
Threads: \url{https://www.threads.net/@dunkelmunkel}\\
Twitch: \url{https://www.twitch.tv/cspannagel}\\
X/Twitter: \url{https://twitter.com/dunkelmunkel}\\
Youtube: \url{https://www.youtube.com/pharithmetik}
}

