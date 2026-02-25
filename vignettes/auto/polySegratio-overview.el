(TeX-add-style-hook "polySegratio-overview"
 (lambda ()
    (LaTeX-add-bibliographies
     "polySeg")
    (LaTeX-add-labels
     "sec:expected-segratios"
     "tab:seg-ratio-1"
     "eq:ripol1"
     "eq:homog"
     "sec:simulate"
     "fig:sim1"
     "fig:sim2"
     "sec:overdispersion"
     "fig:overdisp1"
     "sec:tests"
     "sec:chisq"
     "sec:binomial"
     "sec:util"
     "sec:acknowledgments")
    (TeX-run-style-hooks
     "url"
     "graphicx"
     "natbib"
     "round"
     "mathpazo"
     "sc"
     "fontenc"
     "T1"
     "fancyhdr"
     "latex2e"
     "art10"
     "article"
     "a4paper")))

