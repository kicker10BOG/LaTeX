\ProvidesClass{hwByKicker}[2015/02/27 For Basic HW]
\LoadClass{article}
\RequirePackage{fancyhdr}
\RequirePackage{scrextend}
\RequirePackage[letterpaper, portrait, margin=1in]{geometry}
\RequirePackage{ifthen}

% displays homework information
\newcommand{\hwName}[1]{
  \def \hwname{#1}
}\newcommand{\hwClass}[1]{
  \def \hwclass{#1}  
}\newcommand{\hwAssignment}[1]{
  \def \hwassignment{#1} 
}\newcommand{\hwDate}[1]{
  \def \hwdate{#1} 
}
% fancy header and footer
\setlength{\headheight}{15pt}
\lhead{\hwname}\chead{\hwclass \ - \hwassignment}\rhead{\hwdate}
\lfoot{}\cfoot{Page \thepage}\rfoot{}
\pagestyle{fancy}
% counters
\newcounter{hwQuestionNum}
\newcounter{hwSubQuestionNum}[hwQuestionNum]
\newcounter{hwSubSubQuestionNum}[hwSubQuestionNum]
% numbering types
\newcommand{\hwtheQuestioinNum}{\arabic{hwQuestionNum}}
\newcommand{\hwtheSubQuestionNum}{\alph{hwSubQuestionNum}}
\newcommand{\hwtheSubSubQuestionNum}{\roman{hwSubSubQuestionNum}}
% variables
\def\hwskiplen{0em}
\def\hwinquestion{false}
\def\hwinsub{false}
\def\hwinsubsub{false}
% defines the vertical space between the question and the answer space
\newcommand{\hwskip}[1]{\def\hwskiplen{#1}}
% creates a question
\newcommand*{\hwquestion}[1]%
{
  % question management - question level 1
  \stepcounter{hwQuestionNum}
  \hwresetmargin
  \def\hwinquestion{true}
  % the question
  \large{\textbf{\hwtheQuestioinNum) #1}}
  % answer space
  \normalsize
  \vspace{\hwskiplen}
  \addmargin{1em}
}
% creates a question part
\newcommand{\hwsubquestion}[1]%
{
  % sub question management - question level 2
  \stepcounter{hwSubQuestionNum}
  \ifthenelse{\equal{\hwinsub}{true}}{\addmargin{-1em}}{}
  \ifthenelse{\equal{\hwinsubsub}{true}}{\addmargin{-1em}}{}
  \def\hwinsub{true}
  \def\hwinsubsub{false}
  \def\hwinquestion{true}
  % the question
  \large{\textbf{\hwtheSubQuestionNum) #1 }}
  % answer space
  \normalsize
  \vspace{\hwskiplen}
  \addmargin{1em}
}
% creates a third level question part
\newcommand{\hwsubsubquestion}[1]%
{
  % sub sub question management - question level 3
  \stepcounter{hwSubSubQuestionNum}
  \ifthenelse{\equal{\hwinsubsub}{true}}{\addmargin{-1em}}{}
  \def\hwinsubsub{true}
  % the question part
  \large{\textbf{\hwtheSubSubQuestionNum) #1 }}
  % answer space
  \normalsize
  \vspace{\hwskiplen}
  \addmargin{1em}
}
% creates a heading
\newcommand{\hwgroupheading}[1]%
{
  % adjust margins
  \hwresetmargin
  % the heading
  \Large{\textbf{#1}}
  \normalsize
  
  % everything after
  \vspace{\hwskiplen}
}
% resets margin 
\newcommand{\hwresetmargin}[0]%
{
  \ifthenelse{\equal{\hwinquestion}{true}}{\addmargin{-1em}}{}
  \ifthenelse{\equal{\hwinsub}{true}}{\addmargin{-1em}}{}
  \ifthenelse{\equal{\hwinsubsub}{true}}{\addmargin{-1em}}{}
  \def\hwinquestion{false}
  \def\hwinsub{false}
  \def\hwinsubsub{false}
}