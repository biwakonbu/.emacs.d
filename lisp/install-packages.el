;;-- install packages --;;
;; Base Setting
(el-get-bundle init-loader)
(el-get-bundle helm)
(el-get-bundle powerline)

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

;; gist.el packages.
(el-get-bundle marshal.el
  :name marshal.el
  :type github
  :pkgname "sigma/marshal.el")
(el-get-bundle ht.el
  :name ht.el
  :type github
  :pkgname "Wilfred/ht.el")
(el-get-bundle gist)

;; Dockerfile-mode.
(el-get-bundle dockerfile-mode)

;; fish-mode.
(el-get-bundle emacs-fish)

;;;; Programming mode
(el-get-bundle elpa:persp-mode)
(el-get-bundle magit)

;; erlang
(el-get-bundle erlang-mode)
(el-get-bundle distel)
(el-get-bundle edts
  :name edts
  :type github
  :pkgname "tjarvstrand/edts")

;; haskell
(el-get-bundle haskell-mode
  :name haskell-mode
  :type github
  :pkgname "haskell/haskell-mode")
;;;; cabal-install
;(el-get-bundle haskell-cabal)
;;;; cabal install ghc-mod
(el-get-bundle ghc-mod)

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

;; php-mode.

;; markup mode
(el-get-bundle slim-mode)
(el-get-bundle scss-mode)
(el-get-bundle helm-css-scss)

;; dockerfile mode.
(el-get-bundle dockerfile-mode)

(provide 'install-packages)
