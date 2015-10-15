;;; go-prefs.el --- my preferences for editing Go code.
;;;
;;; Commentary:
;;;
;;; Configures go mode to my tastes.
;;;
;;; Code:

;;; Set the line length to eighty characters.
(add-hook 'go-mod-hook
          '(lambda ()
             (setq-default)
             (setq tab-width 2)))

(provide 'go-prefs)
;;; go-prefs.el ends here
