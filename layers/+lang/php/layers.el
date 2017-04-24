(defconst php/layers/install-packages
  '(eldoc
    flycheck
    php-auto-snippets
    (php-extras :location (recipe :fetcher github :repo "arnested/php-extras"))
    php-mode
    phpcbf))

(layers/install-packages php/layers/install-packages)
