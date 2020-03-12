(defconst yaml/layers/install-package
  '((yaml-mode
     :repo "yoshiki/yaml-mode" 
     :fetcher github
     t)
    ))

(layers/install-packages yaml/layers/install-package)
