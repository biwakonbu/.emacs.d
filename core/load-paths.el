;;; core-load-paths.el --- Spacemacs Core File
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3
(defun add-to-load-path (dir) (add-to-list 'load-path dir))

(defun add-to-load-path-if-exists (dir)
  "If DIR exists in the file system, add it to `load-path'."
  (when (file-exists-p dir)
      (add-to-load-path dir)))

;; paths
(defvar start-directory user-emacs-directory)
(defconst core-directory
  (expand-file-name (concat start-directory "core/")))
(defconst layers-directory
  (expand-file-name (concat start-directory "layers/")))
(defconst lisp-directory
  (expand-file-name (concat start-directory "lisp/")))
(defconst temp-directory
  (expand-file-name (concat lisp-directory "temp/")))
(defconst elget-directory
  (expand-file-name (locate-user-emacs-file "el-get/el-get")))

(defconst cache-directory
  (expand-file-name (concat user-emacs-directory ".cache/")))
(defconst auto-save-directory
  (expand-file-name (concat cache-directory "auto-save/")))
(defconst test-directory
  (expand-file-name (concat start-directory "tests/")))

(defconst user-home-directory
  (expand-file-name "~/")
  "User home directory (~/).")
(defconst pcache-directory
  (concat cache-directory "pcache/"))
(unless (file-exists-p cache-directory)
  (make-directory cache-directory))

;; load paths
(mapc 'add-to-load-path
      `(,core-directory
        ,lisp-directory
        ,temp-directory
        ,elget-directory))
