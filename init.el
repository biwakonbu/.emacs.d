; StartUp Dirctory Settings
;; for Mac OS X Marvericks
(if (and (eq window-system 'ns) ;; Mac OS X
         (equal (getenv "PATH") "/usr/bin:/bin:/usr/sbin:/sbin")) ;; launch from Dock
    (progn
      (setq default-directory "~/")
      (setq command-line-default-directory "~/")))
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'load-path "~/.emacs.d/temp/")

; get-el install packages
(require 'install-packages)

; load color theme (Emacs theme framework)
(load-theme 'molokai t)

(require 'init-loader-config)

(provide 'init)
