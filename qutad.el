(with-eval-after-load 'ox-latex
  (customize-set-value 'org-latex-hyperref-template "
\\hypersetup{\n pdfauthor={%a},\n pdftitle={%t},
 pdfsubject={%d},\n pdfcreator={%c}, \n pdflang={%L},
 hidelinks=true,\n draft=false\n}\n")
  (add-to-list 'org-latex-classes
               '("qutad"
                 "\\documentclass{qutad}"
                 ("\\chapter{%s}"       . "\\chapter*{%s}")
                 ("\\section{%s}"       . "\\section*{%s}")
                 ("\\subsection{%s}"    . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}"     . "\\paragraph*{%s}"))))

