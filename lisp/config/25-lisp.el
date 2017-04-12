(setq inferior-lisp-program "sbcl")

(require 'slime)
(slime-setup '(slime-repl slime-fancy slime-banner))

(setq inferior-lisp-program "ros -Q run")
(setq lisp-body-indent 2)

(setf slime-lisp-implementations
      `((sbcl    ("sbcl" "--dynamic-space-size" "2000"))
        (roswell ("ros" "-Q" "run"))))
(setf slime-default-lisp 'roswell)
