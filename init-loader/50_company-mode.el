(leaf company-mode-conf
  :config
  (leaf company
    :ensure t
    :after t
    :bind ((company-active-map
            ("M-n" . nil)
            ("M-p" . nil)
            ("C-s" . company-filter-candidates)
            ("C-n" . company-select-next)
            ("C-p" . company-select-previous)
            ("<tab>" . company-complete-selection))
           (company-search-map
            ("C-n" . company-select-next)
            ("C-p" . company-select-previous)))
    :custom ((company-idle-delay . 0)
             (company-minimum-prefix-length . 1)
             (company-transformers . '(company-sort-by-occurrence)))
    :global-minor-mode global-company-mode)

  (leaf company-box
    :ensure t
    :after all-the-icons company
    :hook (company-mode-hook)
    :custom ((company-box-icons-alist quote company-box-icons-all-the-icons)
             (company-box-doc-enable)))
  )


;; (use-package company
;;   :defer t
;;   :config
;;   (bind-keys :map company-active-map
;;              ("C-n" . company-select-next)
;;              ("C-p" . company-select-previous)
;;              ("C-n" . company-select-next)
;;              ("C-p" . company-select-previous)
;;              ("C-s" . company-filter-candidates)
;;              ("M-/" . company-complete-selection)
;;              )
;;   )

;; (use-package company-box
;;   :after (company all-the-icons)
;;   :hook ((company-mode . company-box-mode))
;;   :custom
;;   (company-box-icons-alist 'company-box-icons-all-the-icons)
;;   (company-box-doc-enable nil))
