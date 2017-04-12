;; add shell path to exec-path.
(let ((shellpath
       (split-string
        (shell-command-to-string "env | egrep '^PATH=' | sed 's/PATH=//; s/:/ /g'"))))
      (dolist (path shellpath)
        (add-to-list 'exec-path path)))
