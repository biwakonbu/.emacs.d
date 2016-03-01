;;-- install packages --;;
;; Base Setting
(el-get-bundle init-loader)
(el-get-bundle helm)

;; Key setting
(el-get-bundle ddskk)
(el-get-bundle bind-key)

;; input support mode
(el-get-bundle auto-complete)
;; (el-get-bundle ac-helm)
(el-get-bundle ac-html)

;; Screen setting
;;(el-get-bundle centerd-cursor-mode)
(el-get-bundle yascroll)
(el-get-bundle smooth-scroll)
(el-get-bundle smooth-scrolling)

;; buffer search package
(el-get-bundle anzu)
(el-get-bundle avy)

;; util
(el-get-bundle grep-edit)

;;;; Programming mode
;; project
(el-get-bundle neotree
  :name neotree
  :type github
  :pkgname "jaypei/emacs-neotree")
(el-get-bundle projectile)
(el-get-bundle Bad-ptr/persp-mode)
(el-get-bundle magit)

;; front-end
(el-get-bundle web-mode)
(el-get-bundle typescript)
(el-get-bundle tss)

;; support
(el-get-bundle yaml-mode)
(el-get-bundle json-mode)

;; python
;;(el-get-bundle py-autopep8)
(el-get-bundle flymake)
(el-get-bundle flymake-cursor)
(el-get-bundle flymake-easy)
(el-get-bundle flymake-python-pyflakes)
(el-get-bundle jedi)
(el-get-bundle pyenv)
(el-get-bundle elpy)

;; markup mode
(el-get-bundle slim-mode)
(el-get-bundle scss-mode)
(el-get-bundle helm-css-scss)

(provide 'install-packages)
