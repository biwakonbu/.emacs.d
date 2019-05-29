(defconst search/layers/install-package
  '(anzu
    avy
    (dump-jump
     :repo "https://github.com/jacktasia/dumb-jump"
     :fetcher github))
     ))

(layers/install-packages search/layers/install-package)
