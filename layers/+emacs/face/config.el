;; ac-mode
(ac-config-default)

;; anti aging power-line.
(setq ns-use-srgb-colorspace nil)
(mode-icons-mode)
(setq mode-icons-grayscale-transform nil)

(require 'spaceline-config)
(spaceline-emacs-theme)

;; (require 'spaceline-config)
;; other-theme
;; (spaceline-spaceemacs-theme)

(setq powerline-default-separator 'slant)
(spaceline-compile)

;;-- interface settings --;;

;; スムーススクロール
;;(require 'smooth-scroll)
;;(smooth-scroll-mode t)

;; カーソルの位置を真ん中あたりに固定する
;;(require 'smooth-scrolling)

;; font-size
(set-face-attribute 'default nil :height 130)

;; anzu
(require 'anzu)
(global-anzu-mode +1)
(set-face-attribute 'anzu-mode-line nil
                    :foreground "yellow" :weight 'light)

(custom-set-variables
 '(anzu-mode-lighter "")
 '(anzu-deactivate-region t)
 '(anzu-search-threshold 1000)
 '(anzu-replace-to-string-separator " => "))

;; wide space and tab string faces
(defface bigspace/foreground '((t (:background "SeaGreen"))) nil)
(defface tab/foreground '((t (:background "#315C6E"))) nil)
(defface space/foreground '((t (:foreground "red" :underline t))) nil)
(defvar bigspace/foreground 'bigspace/foreground)
(defvar tab/foreground 'tab/foreground)
(defvar space/foreground 'space/foreground)
(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(
     ("　" 0 bigspace/foreground append)
     ("\t" 0 tab/foreground append)
     ("[ ]+$" 0 space/foreground append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
(add-hook 'find-file-hooks '(lambda ()
                              (if font-lock-mode
                                  nil
                                (font-lock-mode t))))
