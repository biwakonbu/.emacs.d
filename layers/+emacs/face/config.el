;; ac-mode
(ac-config-default)

;; (mode-icons-mode)
;; (use-package font-lock+ :ensure t :after all-the-icons)
;; (use-package all-the-icons :if window-system)

(defun all-the-icons-custom-install-fonts (&optional pfx)
  "Helper function to download and install the latests fonts based on OS.
When PFX is non-nil, ignore the prompt and just install"
  (interactive "P")
  (when (or pfx (yes-or-no-p "This will download and install fonts, are you sure you want to do this?"))
    (let* ((url-format "https://github.com/domtronn/all-the-icons.el/blob/master/fonts/%s?raw=true")
           (font-dest (cl-case window-system
                        (x  (concat (getenv "HOME") "/.fonts/"))    ;; Default Linux install directory
                        (ns (concat (getenv "HOME") "/Library/Fonts/" ))))  ;; Default MacOS install directory
           (known-dest? (stringp font-dest)))
      (unless font-dest
        (setq font-dest (read-directory-name "Font installation directory: " "~/")))
      (mapc (lambda (font)
              (url-copy-file (format url-format font) (concat font-dest font) t))
            all-the-icons-font-names)
      (when known-dest?
        (message "Fonts downloaded, updating font cache... <fc-cache -f -v> ")
        (shell-command-to-string (format "fc-cache -f -v")))
      (message "%s Successfully %s `all-the-icons' fonts to `%s'!"
               (all-the-icons-wicon "stars" :v-adjust 0.0) (if known-dest? "installed" "downloaded") font-dest))))

;; (use-package spaceline-all-the-icons :after spaceline)
;; (use-package spaceline :after powerline :ensure t
;;   :config (setq mode-line-format (spaceline-all-the-icons-theme))
(use-package spaceline-config
  :init
  (progn
    (setq powerline-default-separator 'slant)
    ;; anti aging power-line.
    (setq ns-use-srgb-colorspace nil))
  :config
  (progn
    (spaceline-emacs-theme)))

;; paradox mode on
(spaceline-toggle-paradox-menu-on)

;; anti aging power-line.
(setq ns-use-srgb-colorspace t)
(mode-icons-mode)
(setq mode-icons-grayscale-transform nil)

(use-package spaceline-config)
(spaceline-emacs-theme)

;; (require 'spaceline-config)
;; other-theme
;; (spaceline-spaceemacs-theme)

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
