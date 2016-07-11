;; * Emacs configuration entry point

;; ** Package initialization

(defvar my/package-initialize-file
  "~/.config/emacs/package-initialize.el"
  "Package initialization file.")

(defun my/package-initialize ()
  "Load my/package-initialize-file."
  (load-file my/package-initialize-file))

(my/package-initialize)

;; ** My functions initialization

(defvar my/functions-file
  "~/.config/emacs/my-functions.el"
  "My functions file.")

(defun my/load-functions ()
  "Load my functions file."
  (load-file my/functions-file))

(my/load-functions)

;; ** My global map initialization

(defvar my/global-map-file
  "~/.config/emacs/my-global-map.el"
  "My global map file.")

(defun my/load-global-map ()
  "Load my global map file."
  (load-file my/global-map-file))

(my/load-global-map)

;; ** Init files loading

(defvar my/init-files-directory
  "~/.config/emacs/init-files"
  "Directory of the initialization files.")

(defvar my/init-files
  (directory-files my/init-files-directory t "^[^.]")
  "List of the initialization files.")

(defun my/load-init-files ()
  "Load all the initialization files."
  (mapcar (lambda (init-file)
            (load-file init-file))
          my/init-files))

(my/load-init-files)
