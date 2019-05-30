;;; company --- config.el -*- lexical-bindings: t; -*-

;;; Commentary:

;;; Code:

(use-package company
  :config
  (global-company-mode)
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 1
        company-selection-wrap-around t)
  (add-to-list 'company-backends 'company-dabbrev t)

  (custom-set-variables
   '(company-dabbrev-downcase nil)
   '(company-dabbrev-other-buffers 'all)
   '(company-dabbrev-code-other-buffers 'all))

  (bind-keys :map company-mode-map
             ("C-:" . company-complete)
             ("C-;" . company-dabbrev))

  (bind-keys :map company-active-map
             ("C-h" . nil)
             ("C-n" . company-select-next)
             ("C-p" . company-select-previous)
             ("C-s" . company-search-words-regexp))

  (bind-keys :map company-search-map
             ("C-n" . company-select-next)
             ("C-p" . company-select-previous)))

;; (use-package git-complete
;;   :config
;;   (bind-key "C-c C-c" 'git-complete)
;;   (setq git-complete-enable-autopair t)
;;   (setq git-complete-threshold 0.2))

(use-package company-statistics
  :config
  (company-statistics-mode))

;;; config.el ends here
