(use-package terraform-mode
  :defer t
  :mode (
         ("\\.tf\\'" . terraform-mode)
         ("\\.hcl\\'" . terraform-mode)
         )
  :config
  (add-hook 'terraform-mode-hook
            '(lambda ()
               (company-mode t)
               (dumb-jump-mode t)
               (yas-minor-mode t)
               (setq tab-width 2)
               (terraform-format-on-save-mode t)
               ))
  )
