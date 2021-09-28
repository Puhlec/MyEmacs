
(require 'package) 
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (adwaita)))
 '(font-use-system-font t)
 '(package-selected-packages
   (quote
    (flycheck rubocop slim-mode yaml-mode smartparens js2-mode enh-ruby-mode web-mode neotree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json\\.jbuilder\\'" . web-mode))

(require 'enh-ruby-mode)
(add-to-list 'auto-mode-alist '("\\.rb\\'" . enh-ruby-mode))

(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(setq backup-directory-alist `(("." . "~/.emacs-backups")))

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; Use indent 2 spaces
(setq coffe-tab-width 2)
(setq css-indent-offset 2)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-indent-style 2)
(setq js-indent-level 2)

;; Do not use tabs
(setq indent-tabs-mode nil)
(defun notabs ()
  (setq indent-tabs-mode nil))
(add-hook 'js-mode-hook #'notabs)
(add-hook 'web-mode-hook #'notabs)

;; Backups will be in .emacs-backups instead of filename~
(setq backup-directory-alist `(("." . "~/.emacs-backups")))
(setq backup-by-copying t)

;; Disable usless toolbar
(tool-bar-mode -1)

(global-set-key [f8] 'neotree-toggle)

;; Auto close blocks
(require 'smartparens-config)
(require 'smartparens-ruby)
(add-hook 'ruby-mode-hook #'smartparens-mode)
(add-hook 'enh-ruby-mode-hook #'smartparens-mode)
(add-hook 'coffee-mode-hook #'smartparens-mode)
(add-hook 'sass-mode-hook #'smartparens-mode)
