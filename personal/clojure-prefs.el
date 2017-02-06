;;; clojure-prefs.el --- my preferences for editing Clojure code.
;;;
;;; Commentary:
;;;
;;; Configures clojure mode to my tastes.
;;;
;;; Code:

;;; Set the line length to eighty characters.
(add-hook 'clojure-mode-hook
          '(lambda ()
             (define-clojure-indent

               ;; compojure
               (defroutes 'defun)
               (GET 2)
               (PATCH 2)
               (POST 2)
               (PUT 2)
               (DELETE 2)
               (HEAD 2)
               (ANY 2)
               (context 2)

               ;; midje
               (fact 2)

               ;; compojure-api
               (defapi 'defun)
               (swagger-ui 'defun)
               (swagger-docs 'defun)
               (swaggered 'defun)
               (GET* 2)
               (PATCH* 2)
               (POST* 2)
               (PUT* 2)
               (DELETE* 2)
               (HEAD* 2)
               (ANY* 2))))

(provide 'clojure-prefs)
;;; clojure-prefs.el ends here
