(defconst base/layers/install-packages
  '(ansi-colors
    migemo
    yasnippet
    hl-todo
    grep-edit
    ddskk
    bind-key
    ;; golden-ratio
    popup
    (persp-mode
     :repo "Bad-ptr/persp-mode.el"
     :fetcher github
     :stable t)
    zoom-frm
    editorconfig))

(layers/install-packages base/layers/install-packages)
