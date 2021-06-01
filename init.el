(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
(require 'p9-packages)

;; setup auto-save
(setq backup-directory-alist `((".*" . "~/.saves")))
(setq auto-save-file-name-transforms `((".*" "~/.saves" t)))

(require 'elpacn-source)
(require 'p9-ui)

;; default font
;; (set-face-attribute 'default nil
;; 		    :family "Source Code Pro"
;; 		    :height 110
;; 		    :weight 'normal
;; 		    :width 'normal)

(require 'use-package)

(use-package acme-theme
  :config
  (load-theme 'acme t))


(use-package dired-sidebar
  :bind (("C-x C-n" . dired-sidebar-toggle-sidebar))
  :ensure t
  :commands (dired-sidebar-toggle-sidebar)
  :init
  (add-hook 'dired-sidebar-mode-hook
	    (lambda()
	      (unless (file-remote-p default-directory)
		(auto-revert-mode))))
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(acme-theme clang-format+ use-package dired-sidebar)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
