(defconst search/layers/install-package
  '(anzu
    avy
    rg
    (dumb-jump
     :repo "jacktasia/dumb-jump"
     :fetcher github)
    ))

(layers/install-packages search/layers/install-package)
