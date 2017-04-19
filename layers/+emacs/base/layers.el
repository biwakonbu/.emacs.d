(defconst base/layers/install-packages
  '(migemo
    grep-edit
    ddskk
    (persp-mode
     :repo "Bad-ptr/persp-mode.el"
     :fetcher github
     :stable t)))

(layers/install-packages base/layers/install-packages)
