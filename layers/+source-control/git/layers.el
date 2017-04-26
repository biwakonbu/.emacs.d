(defconst git/layers/install-packages
  '(magit
    gitignore-mode
    gitconfig-mode
    gitattributes-mode
    smeargle))

(if (executable-find "git")
    (layers/install-packages git/layers/install-packages))
