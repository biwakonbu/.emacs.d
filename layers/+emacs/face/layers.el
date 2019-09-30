(defconst emacs-face/layers/install-packages
  '(font-lock
    powerline
    (spaceline
     :repo "TheBB/spaceline"
     :fetcher github)
    spaceline-config
    spacemacs-theme
    mode-icons
    yascroll
    all-the-icons
    (spaceline-all-the-icons
     :repo "domtronn/spaceline-all-the-icons.el"
     :fetcher github)))

(layers/install-packages emacs-face/layers/install-packages)
