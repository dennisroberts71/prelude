;;; c-prefs.el --- my preferences for editing C and C++ code.
;;;
;;; Commentary:
;;;
;;; Configures cperl mode to my tastes.
;;;
;;; Code:

;;; Set the line length to eighty characters.
(require 'whitespace)
(add-hook 'c++-mode-hook
          '(lambda () (setq whitespace-line-column 80)))
(add-hook 'c++-mode-hook
          '(lambda () (setq flycheck-gcc-language-standard "C++11")))

(provide 'c-prefs)
;;; c-prefs.el ends here
