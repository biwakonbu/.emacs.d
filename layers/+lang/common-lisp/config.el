(setq inferior-lisp-program "sbcl")

(slime-setup '(slime-repl slime-fancy slime-banner))

(if (executable-find "ros")
    (progn
      (setq inferior-lisp-program "ros -Q run")
      (setf slime-lisp-implementations
            `((sbcl    ("sbcl" "--dynamic-space-size" "2000"))
              (roswell ("ros" "-Q" "run"))))
      (setf slime-default-lisp 'roswell)))

(setq lisp-body-indent 2)
