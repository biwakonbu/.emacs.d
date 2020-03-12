(defconst base/layers/install-packages
  '(ansi-colors
    (migemo :repo "emacs-jp/migemo" :fetcher github t)
    (yasnippet
     :repo "joaotavora/yasnippet"
     :fetcher github
     :files ("yasnippet.el" "snippets")
     t)
    hl-todo
    grep-edit
    (ddskk
     :repo "skk-dev/ddskk"
     :fetcher github
     :old-names (skk)
     :files ("context-skk.el" "ddskk*.el" "tar-util.el" "doc/skk.texi" "etc/skk.xpm" (:exclude "skk-xemacs.el" "skk-lookup.el"))
     t)
    bind-key
    ;; golden-ratio
    (popup
     :repo "auto-complete/popup-el"
     :fetcher github
     :files ("popup.el")
     t)
    (persp-mode
     :repo "Bad-ptr/persp-mode.el"
     :fetcher github
     :stable t
     t)
    zoom-frm
    (editorconfig
     :repo "editorconfig/editorconfig-emacs"
     :fetcher github
     :old-names (editorconfig-core editorconfig-fnmatch) t)))

(layers/install-packages base/layers/install-packages)
