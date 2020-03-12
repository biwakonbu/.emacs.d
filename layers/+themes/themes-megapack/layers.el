(defconst themes-megapack/layers/install-packages
  '((niflheim-theme
     :repo "niflheim-theme/emacs"
     :fetcher github
     t)
    ))

(layers/install-packages themes-megapack/layers/install-packages)
