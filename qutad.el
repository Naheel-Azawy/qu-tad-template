(with-eval-after-load 'ox-latex
  (customize-set-value 'org-latex-with-hyperref nil)
  (add-to-list 'org-latex-classes
               '("qutad"
                 "\\documentclass{qutad}"
                 ("\\chapter{%s}"       . "\\chapter*{%s}")
                 ("\\section{%s}"       . "\\section*{%s}")
                 ("\\subsection{%s}"    . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}"     . "\\paragraph*{%s}"))))

