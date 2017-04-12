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

;; Dockerfile-mode.
(quelpa 'dockerfile-mode)

;; fish-mode.
(quelpa 'emacs-fish)

;;;; Programming mode
(quelpa '(persp-mode
          :repo "Bad-ptr/persp-mode.el"
          :fetcher github
          :stable t))

(if (executable-find "git")
    (quelpa 'magit t))

;; elixir
(quelpa 'elixir t)
(quelpa 'alchemist t)
(quelpa 'ac-alchemist t)

;; elixir
(quelpa 'elixir-mode t)
(quelpa 'alchemist t)
(quelpa 'ac-alchemist t)

;; erlang
(if (executable-find "erlc")
    (progn
      (quelpa 'erlang-mode t)
      (quelpa 'distel t)
      (quelpa 'edts t)))

;; haskell
(quelpa 'haskell-mode t)
;;;; cabal-install
;(quelpa 'haskell-cabal)
;;;; cabal install ghc-mod
(quelpa 'ghc-mod t)

;; front-end
(quelpa 'web-mode t)

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
(quelpa 'jedi t)
(quelpa 'pyenv t)
(quelpa 'elpy t)

(quelpa 'smartparens t)

;; lisp-mode.
(quelpa 'slime t)
(quelpa 'slime-company t)
(quelpa 'slime-extension t)

;; markup mode
(quelpa 'slim-mode t)
(quelpa 'scss-mode t)
(quelpa 'helm-css-scss t)
(quelpa 'markdown-mode t)

;; dockerfile mode.
(quelpa 'dockerfile-mode t)

(provide 'install-packages)
