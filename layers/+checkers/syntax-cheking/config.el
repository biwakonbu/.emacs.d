(add-hook 'php-mode-hook
          (lambda ()
            (setq flycheck-phpcs-standard "PSR2")))
(setq php-mode-coding-style (quote psr2))
