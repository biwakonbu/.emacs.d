;;; company --- layers.el -*- lexical-bindings: t; -*-

;;; Commentary:

;;; Code:

(defconst company/layers/install-packages
  '(company
    company-statistics
    ;; (git-complete
    ;;  :repo "zk-phi/git-complete"
    ;;  :fetcher github)
    ))

(layers/install-packages company/layers/install-packages)

;;; layers.el ends here
