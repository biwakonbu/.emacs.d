(defconst python/layers/install-packages
  '((jedi
     :repo "tkf/emacs-jedi"
     :fetcher github
     :files ("jedi.el")
     t)
    (pyenv-mode
     :repo "pythonic-emacs/pyenv-mode"
     :fetcher github
     t)
    (elpy
     :repo "jorgenschaefer/elpy"
     :fetcher github
     :files ("*.el" "NEWS.rst" "snippets" "elpy")
     t)
    ac-python))

(layers/install-packages python/layers/install-packages)
