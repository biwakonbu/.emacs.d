(defconst emacs-face/layers/install-packages
  '(font-lock
    (powerline
     :repo "milkypostman/powerline" 
     :fetcher github
     t)
    (spaceline
     :repo "TheBB/spaceline"
     :fetcher github
     t)
    spaceline-config
    (spacemacs-theme
     :repo "nashamri/spacemacs-theme"
     :fetcher github
     t)
    (mode-icons
     :repo "ryuslash/mode-icons" 
     :fetcher github
     :files ("*.el" "icons")
     t)
    (yascroll
     :repo "emacsorphanage/yascroll"
     :fetcher github
     t)
    (all-the-icons
     :repo "domtronn/all-the-icons.el"
     :fetcher github
     :files (:defaults "data")
     t)
    (spaceline-all-the-icons
     :repo "domtronn/spaceline-all-the-icons.el"
     :fetcher github
     t)))

(layers/install-packages emacs-face/layers/install-packages)
