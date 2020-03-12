(defconst html/layers/install-packages
  '(web-mode
    (scss-mode
     :repo "antonj/scss-mode"
     :fetcher github
     t)
    (slim-mode
     :repo "slim-template/emacs-slim"
     :fetcher github
     t)
    ))

(layers/install-packages html/layers/install-packages)
