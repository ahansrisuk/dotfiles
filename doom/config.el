;;; $DOOMDIR/config.el -*- lexi-cal-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-badger)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/allen-org")
;; (setq org-directory "/mnt/c/Users/Allen/allen-org")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;
;;

;; ----- My User Settings -----
;; Line spacing
(setq-default line-spacing 0.3)

;; Font Family and size
(setq doom-font (font-spec :family "JetBrains Mono" :size 18))

;; Keybinds for MacOS
(setq mac-command-modifier       'meta
      ns-command-modifier        'meta
      mac-option-modifier        'alt
      mac-right-option-modifier  'alt)

;; Org Mode config
;; allows for searching in folded headlines
(setq-default org-fold-core-style 'overlays)
;; other Org Mode config
(after! org
  (setq-default org-hide-emphasis-markers t
                org-log-done nil
                org-agenda-files '("/mnt/c/Users/Allen/allen-org/personal.org"
                                   "/mnt/c/Users/Allen/allen-org/books.org"
                                   "/mnt/c/Users/Allen/allen-org/work.org"
                                   "/mnt/c/Users/Allen/allen-org/contacts.org"
                                   "/mnt/c/Users/Allen/allen-org/inbox.org")
                org-contacts-files '("/mnt/c/Users/Allen/allen-org/contacts.org")
                org-todo-keywords '((sequence "TODO(t)" "IN_PROGRESS(p)" "WAITING(w)" "|" "DONE(d)" "CANCELED(c)" )
                                    (sequence "[ ](o)" "[-](i)" "[?](q)" "|" "[X](x)")
                                    (type "PROJECT(P)" "BUG(b)" "|"))
                org-todo-keyword-faces'(("TODO" . "LightGreen")
                                        ("IN_PROGRESS" . "SteelBlue")
                                        ("WAITING" . "PeachPuff")
                                        ("PROJECT" . "LightSkyBlue")
                                        ("CANCELED" . "honeydew3")
                                        ("BUG" . "tan1")
                                        ("[-]" . "SteelBlue")
                                        ("[?]" . "moccasin"))
                org-habit-show-all-today t
                org-modules '(org-habit))
  )
