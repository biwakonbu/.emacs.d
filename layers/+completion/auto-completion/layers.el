(defconst auto-completion/layers/install-packages
  '((popup
     :repo "auto-complete/popup-el"
     :fetcher github
     :files ("popup.el")
     t)
    auto-complete))

(layers/install-packages auto-completion/layers/install-packages)
