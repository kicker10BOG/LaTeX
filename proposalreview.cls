\ProvidesClass{proposalreview}[2015/02/27 For reviewing potential projects]
\LoadClass{article}
\RequirePackage{titlesec}
% 1-inch margins
\usepackage[letterpaper, portrait, margin=1in]{geometry}

% Paragraph formatting
\setlength{\parindent}{0em}
\setlength{\parskip}{1em}

% Formatting for section headers
\titleformat{\section} 
  {\large\raggedright\bf} 
  {}{0em}
  {}
\titlespacing{\section}{0em}{0em}{-0.75em}

% These commands are used for defining the info
% provided by the proposal
\newcommand{\PropNumber}[1]{
  \def \propnum{#1}
}\newcommand{\PrincipleIvestigator}[1]{
  \def \prininvestigator{#1}  
}\newcommand{\PropTitle}[1]{
  \def \proptitle{#1} 
}\newcommand{\PropRating}[1]{
  \def \proprating{#1} 
}
% This commmand displays that info in a 
% nicely formatted heading
\newcommand{\makeinfo}[0]{
  \textbf{Proposal Number:} \propnum \\
  \textbf{Principal Investigator:} \prininvestigator \\
  \textbf{Proposal Title:} \proptitle \\
  \textbf{Rating:} \proprating 
}

