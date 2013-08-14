;; Add Melpa Repo -- Most of the stuff I want/need lives there.
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Load the Twilight theme, because Awesome
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'twilight t)

;; Hyde, for Octopress publishing
(add-to-list 'load-path "~/.emacs.d/packages/hyde")
(require 'hyde)

;; Projectile, because I have too many things going on
(require 'projectile)
(projectile-global-mode)

;; Ensime, for Scala integration
;; load the ensime lisp code...
(add-to-list 'load-path "/Users/ross/.emacs.d/packages/ensime/elisp/")
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; Jade-mode hooks
(add-to-list 'load-path "~/.emacs.d/packages/jade-mode")
(require 'sws-mode)
(require 'jade-mode)    
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("f2de89c68dd88605a1a22467c77375b4f3b9530d6d866b1b2f1b05378a20242c" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
