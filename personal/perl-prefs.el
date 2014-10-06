;;; perl-prefs.el --- my preferences for editing Perl code.
;;;
;;; Commentary:
;;;
;;; Configures cperl mode to my tastes.
;;;
;;; Code:

;;; Set the line length to eighty characters.
(require 'whitespace)
(add-hook 'cperl-mode-hook
          '(lambda () (setq whitespace-line-column 80)))

;; Turn on block indenting in cperl mode.
(custom-set-variables
 '(cperl-close-paren-offset -4)
 '(cperl-continued-statement-offset 4)
 '(cperl-indent-level 4)
 '(cperl-indent-parens-as-block t)
 '(cperl-tab-always-indent t))

(provide 'perl-prefs)
;;; perl-prefs.el ends here
