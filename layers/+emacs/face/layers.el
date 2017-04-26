(defconst emacs-face/layers/install-packages
  '(font-lock
    powerline
    (spaceline
     :repo "TheBB/spaceline"
     :fetcher github)
    spaceline-config
    spacemacs-theme
    mode-icons
    (all-the-icons
     :repo "domtronn/all-the-icons"
     :fetcher github)
    (spaceline-all-the-icons
     :repo "domtronn/spaceline-all-the-icons.el"
     :fetcher github)))

(layers/install-packages emacs-face/layers/install-packages)
