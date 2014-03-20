;;; editor-prefs.el --- my editor preferences.
;;;
;;; Commentary:
;;;
;;; Configures the editor to my tastes.
;;;
;;; Code:

;;; Set the line length to iPlant's standard for Clojure.
(require 'whitespace)
(setq whitespace-line-column 100)

;;; Turn autoindenting on.
(global-set-key "\r" 'newline-and-indent)

(provide 'editor-prefs)
;;; editor-prefs.el ends here
