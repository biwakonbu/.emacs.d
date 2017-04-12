;;-- install packages --;;
(quelpa 'spacemacs-theme t)

;; Base Setting
(quelpa 'init-loader t)
(quelpa 'helm t)
(quelpa 'use-package t)

;; Key setting
(quelpa 'ddskk t)

;; appearance
(quelpa 'spacemacs-theme t)
(quelpa 'powerline t)
(quelpa 'spaceline t)
(quelpa 'mode-icons t)

;; input support mode
(quelpa 'auto-complete t)
;; (el-get-bundle ac-helm)
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

;; gist.el packages.
(quelpa '(marshal
          :repo "sigma/marshal.el"
          :fetcher github
          :stable t))

(quelpa '(ht
          :repo "Wilfred/ht.el"
          :fetcher github
          :stable t))

(quelpa 'gist)

;;;; Programming mode
(quelpa '(persp-mode
          :repo "Bad-ptr/persp-mode.el"
          :fetcher github
          :stable t))

;; support
(quelpa 'yaml-mode t)
(quelpa 'json-mode t)
(quelpa 'migemo t)
(quelpa 'helm-migemo t)

;; python
;;(el-get-bundle py-autopep8)
(quelpa 'flymake t)
(quelpa 'flymake-cursor t)
(quelpa 'flymake-easy t)
(quelpa 'flymake-python-pyflakes t)

(quelpa 'smartparens t)

;; markup mode
(quelpa 'helm-css-scss t)
(quelpa 'markdown-mode t)

(provide 'install-packages)
