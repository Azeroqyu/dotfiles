#!/bin/bash

# this makes a latex file for note taking

AUTHOR=$(whoami)


read -p "File name> " filename 

cd ~/notes || exit 1

cat <<EOF > "${filename}.tex"
\documentclass{article}
\usepackage{amsmath}
\usepackage{latexsym}
\usepackage{tikz}
\usepackage{pgfplots}
\usepackage{xcolor}
\usepackage[portuguese]{babel}
\usepackage{graphicx}
\date{\today}
\author{${AUTHOR}}
\title{${filename}}
\begin{document}
\section{Introduction}



\end{document}
EOF

nvim "${filename}.tex"
