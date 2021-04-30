;;; framesize.el --- sets the default size of frame.
;;;
;;; Commentary:
;;;
;;; I use this to place the frame where I like it.
;;;
;;; Code:

(defun set-default-initial-frame-size ()
  "Set the initial frame size to the default values."
  (add-to-list 'default-frame-alist '(top . 25))
  (add-to-list 'default-frame-alist '(left . 0))
  (add-to-list 'default-frame-alist '(height . 95))
  (add-to-list 'default-frame-alist '(width . 120)))

;; Set the initial frame size.
(let ((filename (expand-file-name "~/.framesize.el")))
  (message filename)
  (if (file-exists-p filename)
      (load-file filename)
    (set-default-initial-frame-size)))

(provide 'framesize)
;;; framesize.el ends here
