;;; editor-prefs.el --- my editor preferences.
;;;
;;; Commentary:
;;;
;;; Configures the editor to my tastes.
;;;
;;; Code:

;;; Decrease the font size a little.
(set-face-attribute 'default nil :height 110)

;;; Set the line length to iPlant's standard for Clojure.
(require 'whitespace)
(setq whitespace-line-column 120)

;;; Set the default fill column.
(setq-default fill-column 120)

;;; Turn autoindenting on.
(global-set-key "\r" 'newline-and-indent)

;;; Don't use tabs by default.
(setq-default indent-tabs-mode nil)

;;; The audible and visible bells are both kind of annoying; disable them.
(setq ring-bell-function 'ignore)

;;; A function to unfill a paragraph.
(defun unfill-paragraph (&optional region)
  "Convert the REGION or a multi-line paragraph into a single line of text."
  (interactive (progn (barf-if-buffer-read-only) '(t)))
  (let ((fill-column (point-max))
        (emacs-lisp-docstring-fill-column t))
    (fill-paragraph nil region)))

;;; A key binding for the unfill-paragraph function.
(define-key global-map "\M-Q" 'unfill-paragraph)

(provide 'editor-prefs)
;;; editor-prefs.el ends here
