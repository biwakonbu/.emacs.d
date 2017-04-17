;;-- install packages --;;
;; Base Setting
(quelpa 'init-loader t)

(quelpa 'use-package t)

;; input support mode
(quelpa 'ac-html t)

;; buffer search package
(quelpa 'anzu t)
(quelpa 'avy t)

;;;; Programming mode
(quelpa '(persp-mode
          :repo "Bad-ptr/persp-mode.el"
          :fetcher github
          :stable t))

;; python
;;(el-get-bundle py-autopep8)
(quelpa 'flymake t)
(quelpa 'flymake-cursor t)
(quelpa 'flymake-easy t)
(quelpa 'flymake-python-pyflakes t)

(quelpa 'smartparens t)

(provide 'install-packages)
