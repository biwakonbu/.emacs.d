(defconst emacs-ui/layers/install-packages
  '(desktop
    doc-view
    (paradox
     :repo "Malabarba/paradox"
     :fetcher github
     t)
    restart-emacs))

(layers/install-packages emacs-ui/layers/install-packages)
