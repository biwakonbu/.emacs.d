(defconst fish/layers/install-packages
  '((fish-mode
     :repo "wwwjfy/emacs-fish"
     :fetcher github
     t)
    ))

(layers/install-packages fish/layers/install-packages)
