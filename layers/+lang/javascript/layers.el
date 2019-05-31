;;; javascript --- layers.el -*- lexical-bindings: t; -*-

;;; Commentary:

;;; Code:

(defconst javascript/layers/install-package
  '(json-mode
    vue-mode
    js-mode
    js2-mode
    ))

(layers/install-packages javascript/layers/install-package)

;;; layers.el ends here
