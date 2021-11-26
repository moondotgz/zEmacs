(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-refresh-contents)
(package-initialize)

(defvar zEmacs/packages
 '(use-package evil evil-collection doom-themes doom-modeline almost-mono-themes arc-dark-theme atom-one-dark-theme atom-dark-theme blog-minimal dmenu arch-packer gh gh-md gist git magit markdown-preview-eww markdown-preview-mode ox-hugo ox-gemini rainbow-mode poly-markdown poly-org polymode pacmacs))
(dolist (p zEmacs/packages)
  (when (not (package-installed-p p))
    (package-install p)))

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-vsplit-window-right t)
  (setq evil-split-window-below t)
  (evil-mode))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))
