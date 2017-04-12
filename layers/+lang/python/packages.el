(defvar python-packages
  '(pyenv
    ac-python
    tramp-cmds))

(defun python/packages/init-pyenv-mode ()
  (use-package pyenv-mode
    :if (executable-find "pyenv")
    :commands (pyenv-mode-versions)
    :init
    (progn
      (pcase python-auto-set-local-pyenv-virtualenv
        (`on-visit
         (core/funcs/add-to-hooks 'python/funcs/pyenv-mode-set-local-version
                                  '(python-mode-hook)))))))
