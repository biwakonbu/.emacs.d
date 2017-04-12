(defconst github/layers/install-packages
  '(gist))

(if (executable-find "git")
    (layers/install-packages git/layers/install-packages))
