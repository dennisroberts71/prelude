;;; framesize.el --- sets the default size of frame.
;;;
;;; Commentary:
;;;
;;; I use this to place the frame where I like it.
;;;
;;; Code:
;; Set the initial frame size.
(add-to-list 'default-frame-alist '(top . 25))
(add-to-list 'default-frame-alist '(left . 0))
(add-to-list 'default-frame-alist '(height . 81))
(add-to-list 'default-frame-alist '(width . 100))

(provide 'framesize)
;;; framesize.el ends here
