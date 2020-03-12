(defconst markdown/layers/install-package
  '((markdown-mode
     :repo "jrblevin/markdown-mode"
     :fetcher github
     t)
    ))

(layers/install-packages markdown/layers/install-package)
