;;-- install packages --;;
;; Base Setting
(quelpa 'init-loader t)

(quelpa 'use-package t)

;; Key setting
(quelpa 'ddskk t)

;; input support mode
(quelpa 'ac-html t)

;; Screen setting
;;(el-get-bundle centerd-cursor-mode)
(quelpa 'yascroll t)
(quelpa 'smooth-scroll t)
(quelpa 'smooth-scrolling t)

;; buffer search package
(quelpa 'anzu t)
(quelpa 'avy t)

;; util
(quelpa 'grep-edit t)

;;;; Programming mode
(quelpa '(persp-mode
          :repo "Bad-ptr/persp-mode.el"
          :fetcher github
          :stable t))

;; support
(quelpa 'migemo t)

;; python
;;(el-get-bundle py-autopep8)
(quelpa 'flymake t)
(quelpa 'flymake-cursor t)
(quelpa 'flymake-easy t)
(quelpa 'flymake-python-pyflakes t)

(quelpa 'smartparens t)

(provide 'install-packages)
