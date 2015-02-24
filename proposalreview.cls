\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{proposalreview}[2015/02/23 For reviewing potential journal articles]
\LoadClass{article}
\RequirePackage{titlesec}

\usepackage[letterpaper, portrait, margin=1in]{geometry}

\setlength{\parindent}{0em}
\setlength{\parskip}{1em}

\titleformat{\section} 
  {\large\raggedright} 
  {}{0em}
  {}
  
\titlespacing{\section}{0em}{0em}{0em}

\newcommand{\PropNumber}[1]{
  \def \@propnum{#1}
}\newcommand{\PrincipleIvestigator}[1]{
  \def \@prininvestigator{#1}  
}\newcommand{\PropTitle}[1]{
  \def \@proptitle{#1} 
}\newcommand{\PropRating}[1]{
  \def \@proprating{#1} 
}

\newcommand{\makeinfo}[0]{
  \noindent
  \textbf{Proposal Number:} \@propnum \\
  \textbf{Principal Investigator:} \@prininvestigator \\
  \textbf{Proposal Title:} \@proptitle \\
  \textbf{Rating:} \@proprating 
}

