;;; go-prefs.el --- my preferences for editing Go code.
;;;
;;; Commentary:
;;;
;;; Configures go mode to my tastes.
;;;
;;; Code:

defun my-go-mode-hook ()
  (setq tab-width 2)

  ;; guru settings
  (go-guru-hl-identifier-mode)

  ;; Key bindings specific to go-mode
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
  (local-set-key (kbd "M-p") 'compile)
  (local-set-key (kbd "M-P") 'recompile)
  (local-set-key (kbd "M-]") 'next-error)
  (local-set-key (kbd "M-[") 'previous-error))

;;; Add my custom hooks.
(add-hook 'go-mode-hook 'my-go-mode-hook)

;;; Explicitly set the GOPATH environment variable.
(add-hook 'go-mode-hook
          '(lambda ()
             (setenv "GOPATH"
                     (concat (getenv "HOME") "/go" ":"
                             (getenv "HOME") "/de/go"))))

(provide 'go-prefs)
;;; go-prefs.el ends here
