(defconst common-lisp/layers/install-packages
  '((slime
     :repo "slime/slime"
     :fetcher github
     :files ("*.el" ("lib" "lib/hyperspec.el") "swank" "*.lisp" "*.asd" ("contrib" "contrib/*")
             (:exclude "contrib/test" "contrib/Makefile") "doc/slime.texi" "doc/slime.info" "doc/dir" "ChangeLog")
     t)
    slime-copany
    slime-extension))

(layers/install-packages common-lisp/layers/install-packages)
