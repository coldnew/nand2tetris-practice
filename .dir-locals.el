;; If you have problem with this `.dir-locals.el' file, please make sure you use
;; `Emacs 24' and the `(package-initialize)' is called by your .emacs.d.
((nil . ((eval . (package-install 'nand2tetris))
         (eval . (require 'nand2tetris))
         ;; set the nand2tetris-core-base-dir to current directory
         (eval . (let ((current-directory (file-name-directory (or load-file-name (buffer-file-name)))))
                   (setq-local nand2tetris-core-base-dir current-directory))))))