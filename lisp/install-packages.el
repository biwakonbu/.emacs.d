;;-- install packages --;;
;; Base Setting
(el-get-bundle init-loader)
(el-get-bundle helm)
(el-get-bundle powerline)
(el-get-bundle use-package)

;; Key setting
(el-get-bundle ddskk)

;; appearance
(el-get-bundle spaceline)

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
(el-get-bundle persp-mode
  :name persp-mode
  :type github
  :pkgname "Bad-ptr/persp-mode.el")
(if (executable-find "git")
    (el-get-bundle magit))

;; erlang
(if (executable-find "erlc")
    (progn
      (el-get-bundle erlang-mode)
      (el-get-bundle distel)
      (el-get-bundle edts
        :name edts
        :type github
        :pkgname "tjarvstrand/edts")))

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
(el-get-bundle migemo)
(el-get-bundle helm-migemo)

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

;; lisp-mode.
(el-get-bundle slime
  :name slime
  :type github
  :pkgname "slime/slime")
(el-get-bundle slime-company
  :name slime-company
  :type github
  :pkgname "anwyn/slime-company")
(el-get-bundle slime-extension)

;; markup mode
(el-get-bundle slim-mode)
(el-get-bundle scss-mode)
(el-get-bundle helm-css-scss)
(el-get-bundle markdown-mode)

;; dockerfile mode.
(el-get-bundle dockerfile-mode)

(provide 'install-packages)
