;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq gc-cons-threshold 100000000)
(defconst emacs-min-version   "24.4" "Minimal version of Emacs.")

(if (not (version<= emacs-min-version emacs-version))
    (error (concat "Your version of Emacs (%s) is too old. "
                   "emacs requires Emacs version %s or above.")
           emacs-version emacs-min-version)
  (load-file (concat (file-name-directory load-file-name)
                     "core/core-load-paths.el"))

  (if (require 'quelpa nil t)
      (quelpa-self-upgrade)
    (with-temp-buffer
      (url-insert-file-contents "https://raw.github.com/quelpa/quelpa/master/bootstrap.el")
      (eval-buffer)))

  (quelpa
   '(quelpa-use-package
     :fetcher github
     :repo "quelpa/quelpa-use-package"))
  (require 'quelpa-use-package)

  (require 'core-layers)
  (layers/init)

  ;; el-get install
  (unless (require 'el-get nil 'noerror)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
      (goto-char (point-max))
      (eval-print-last-sexp)))

  ;; el-get install packages
  (require 'install-packages)

  ;; load color theme (Emacs theme framework)
  (load-theme 'dracula-custom t t)
  (enable-theme 'dracula-custom)

  ;; StartUp Dirctory Settings
  ;; for Mac OS X Marvericks
  (if (and (eq window-system 'ns) ;; Mac OS X
           (equal (getenv "PATH") "/usr/bin:/bin:/usr/sbin:/sbin")) ;; launch from Dock
      (progn
        (setq default-directory "~/")
        (setq command-line-default-directory "~/")))
  (when load-file-name
    (setq user-emacs-directory (file-name-directory load-file-name)))

  (require 'init-loader-config))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(edts-inhibit-package-check t)
 '(package-selected-packages
   (quote
    (pyenv-mode pythonic quelpa-use-package markdown-mode helm-css-scss scss-mode slim-mode slime-company slime macrostep elpy yasnippet pyvenv highlight-indentation find-file-in-project ivy jedi jedi-core python-environment epc ctable concurrent deferred flymake-cursor helm-migemo migemo json-mode json-snatcher json-reformat yaml-mode web-mode haskell-mode magit magit-popup git-commit with-editor persp-mode dockerfile-mode gist gh logito pcache marshal ht avy anzu smooth-scrolling smooth-scroll yascroll ac-html f mode-icons spaceline powerline ddskk cdb ccc use-package diminish bind-key helm helm-core async init-loader spacemacs-theme smartparens quelpa flymake-python-pyflakes ac-alchemist)))
 '(ruby-insert-encoding-magic-comment nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
