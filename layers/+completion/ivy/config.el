(use-package auto-highlight-symbol
  :init
  (auto-highlight-symbol-mode))

(use-package ivy
  :init
  (ivy-mode t)
  (setq ivy-re-builders-alist
        '((t . ivy--regex-fuzzy)))
  (setq ivy-initial-inputs-alist nil)
  (bind-keys :map ivy-mode-map
             ;; ("C-s" . swiper)
             ("M-x" . counsel-M-x)
             ("C-x C-f" . counsel-find-file)
             ("<f1> f" . counsel-describe-function)
             ("<f1> v" . counsel-describe-variable)
             ("<f1> l" . counsel-load-library)
             ("<f2> i" . counsel-info-lookup-symbol)
             ("<f2> u" . counsel-unicode-char)
             ("C-c g" . counsel-git)
             ("C-c j" . counsel-git-grep)))
