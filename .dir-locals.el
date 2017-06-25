;; If you have problem with this `.dir-locals.el' file, please make sure you use
;; `Emacs 24' and the `(package-initialize)' is called by your .emacs.d.
((nil . ((eval . (set (make-local-variable 'my-nand2tetris-path)
                      (file-name-directory
                       (let ((d (dir-locals-find-file ".")))
                         (if (stringp d) d (car d))))))
         ;; (eval . (message "nand2tetris project directory set to `%s'." my-nand2tetris-path))
         (eval . (progn
                   (package-install 'nand2tetris)
                   (require 'nand2tetris)
                   (setq nand2tetris-core-base-dir my-nand2tetris-path)
                   (add-to-list 'auto-mode-alist
                                (cons (concat (expand-file-name nand2tetris-core-base-dir) "*\\.hdl")
                                      'nand2tetris-mode))
                   ))
         )))