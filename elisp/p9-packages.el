(setq package-archives '(("gnu"   . "https://elpa.emacs-china.org/gnu/")
			 ("melpa" . "https://elpa.emacs-china.org/melpa/")
			 ("org"   . "https://elpa.emacs-china.org/org/")))

(require 'package)
(package-initialize)

(defun ensure-package-installed (&rest packages)
  (mapcar
   (lambda (package)
     (unless (package-installed-p package)
       (package-install package)))
   packages)
  )

(ensure-package-installed
 'use-package
 'dired-sidebar
 'acme-theme
 )

(provide 'p9-packages)
