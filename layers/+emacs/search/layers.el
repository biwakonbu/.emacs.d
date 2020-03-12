(defconst search/layers/install-package
  '((anzu
     :repo "syohex/emacs-anzu"
     :fetcher github
     t)
    (avy
     :repo "abo-abo/avy"
     :fetcher github
     t)
    (rg
     :repo "dajva/rg.el"
     :fetcher github
     t)
    (dumb-jump
     :repo "jacktasia/dumb-jump"
     :fetcher github
     t)
    ))

(layers/install-packages search/layers/install-package)
