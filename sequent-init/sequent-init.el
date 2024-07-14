;; theme
(load-theme 'badwolf)

;; bitmap font stuff for sequent
(defconst matt-default-font "Bok Montecarlo 12")
(add-to-list 'default-frame-alist (cons 'font matt-default-font))
(set-face-font 'default matt-default-font)

;; font toggling for sequent
(defvar matt-embiggened-yet nil)
(defun embiggen ()
  "set font for Emacs when menu-set-font can't see it"
  (interactive)
  (if matt-embiggened-yet
      (set-face-font 'default matt-default-font)
    (set-face-font 'default "Misc Fixed 18"))
  (setq matt-embiggened-yet (not matt-embiggened-yet)))
(global-set-key (kbd "<f10>") 'embiggen)