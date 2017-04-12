(defconst git/layers/install-packages
  '(magit))

(if (executable-find "git")
    (layers/install-packages git/layers/install-packages))
