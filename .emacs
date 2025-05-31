;; init file

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; download use-package
(unless (package-installed-p 'user-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; download spacemacs-theme
(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))

;;; actual config file
(org-babel-load-file (expand-file-name "~/config.org"))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("7fd8b914e340283c189980cd1883dbdef67080ad1a3a9cc3df864ca53bdc89cf" default))
 '(helm-minibuffer-history-key "M-p")
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 180 :width normal :foundry "outline" :family "Courier New")))))
