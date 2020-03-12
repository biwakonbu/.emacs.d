(defconst syntax-checking/layers/install-packages
  '((flycheck
     :repo "flycheck/flycheck"
     :fetcher github
     t)
    (flycheck-pos-tip
     :repo "flycheck/flycheck-pos-tip"
     :fetcher github
     t)
    (popwin
     :repo "emacsorphanage/popwin"
     :fetcher github
     t)
    ))

(layers/install-packages syntax-checking/layers/install-packages)
