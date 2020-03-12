(defconst git/layers/install-packages
  '((magit
     :repo "magit/magit"
     :fetcher github
     :files ("lisp/magit" "lisp/magit*.el" "lisp/git-rebase.el" "Documentation/magit.texi" "Documentation/AUTHORS.md" "LICENSE"
             (:exclude "lisp/magit-libgit.el"))
     t)
    (gitignore-mode
     :repo "magit/git-modes"
     :fetcher github
     :files ("gitignore-mode.el")
     t)
    (gitconfig-mode
     :repo "magit/git-modes"
     :fetcher github
     :files ("gitconfig-mode.el")
     t)
    (gitattributes-mode
     :repo "magit/git-modes"
     :fetcher github
     :files ("gitattributes-mode.el")
     t)
    (smeargle
     :repo "syohex/emacs-smeargle"
     :fetcher github
     t)
    ))

(if (executable-find "git")
    (layers/install-packages git/layers/install-packages))
