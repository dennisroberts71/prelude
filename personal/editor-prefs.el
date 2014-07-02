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

;;; Never use tabs; it may be necessary to find a way to override this for make
;;; description files and for Go files.
(setq-default indent-tabs-mode nil)

;;; The audible and visible bells are both kind of annoying; disable them.
(setq ring-bell-function 'ignore)

(provide 'editor-prefs)
;;; editor-prefs.el ends here
