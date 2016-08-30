;;; go-prefs.el --- my preferences for editing Go code.
;;;
;;; Commentary:
;;;
;;; Configures go mode to my tastes.
;;;
;;; Code:

;;; Set the tab width to 2 characters.
(add-hook 'go-mode-hook
          '(lambda ()
             (setq-default)
             (setq tab-width 2)))

;;; Explicitly set the GOPATH environment variable.
(add-hook 'go-mode-hook
          '(lambda ()
             (setenv "GOPATH"
                     (concat (getenv "HOME") "/go" ":"
                             (getenv "HOME") "/de/go"))))

(provide 'go-prefs)
;;; go-prefs.el ends here
