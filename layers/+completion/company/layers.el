;;; company --- layers.el -*- lexical-bindings: t; -*-

;;; Commentary:

;;; Code:

(defconst company/layers/install-packages
  '((company
     :repo "company-mode/company-mode"
     :fetcher github
     t)
    (company-statistics
     :repo "company-mode/company-statistics"
     :fetcher github
     t)
    yasnippet
    (auto-yasnippet
     :repo "abo-abo/auto-yasnippet"
     :fetcher github
     t)
    ;; (git-complete
    ;;  :repo "zk-phi/git-complete"
    ;;  :fetcher github)
    ))

(layers/install-packages company/layers/install-packages)

;;; layers.el ends here
