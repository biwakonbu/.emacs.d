;;; javascript --- layers.el -*- lexical-bindings: t; -*-

;;; Commentary:

;;; Code:

(defconst javascript/layers/install-package
  '((json-mode
     :repo "joshwnj/json-mode"
     :fetcher github
     t)
    (mmm-mode
     :repo "purcell/mmm-mode"
     :fetcher github
     t)
    (vue-mode
     :repo "AdamNiederer/vue-mode"
     :fetcher github
     :stable t
     t)
    js-mode
    ))

(layers/install-packages javascript/layers/install-package)

;;; layers.el ends here
