#!/usr/bin/env bash

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
\usepackage{fancyhdr}
\usepackage[a4paper, left=0.6in,right=0.6in,top=0.6in,bottom=0.9in,includeheadfoot]{geometry}
\rhead{\LARGE $\mathbf{\lambda}$}
\pagestyle{fancy}
\date{\today}
\author{${AUTHOR}}
\title{${filename}}
\begin{document}
\maketitle
\pagebreak
\section{}




\end{document}
EOF

nvim "${filename}.tex"
