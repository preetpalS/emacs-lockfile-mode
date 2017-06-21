;;; lockfile-mode.el --- Major mode for .lock files -*- lexical-binding: t; -*-

;; Author: Preetpal S. Sohal
;; URL:
;; Version: 0.0.1
;; Package-Requires: ((emacs "24.3"))
;; License: GNU General Public License Version 3

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Usage:
;; (require 'lockfile-mode)

;;; Code:

(defun lockfile--make-buffer-read-only () "Makes buffer readonly." (read-only-mode 1))

(define-derived-mode lockfile-mode fundamental-mode "lockfile"
  "A minimalistic major mode for `.lock' files."
  :abbrev-table nil)

;; Associate `.lock' files with lockfile-mode
(add-to-list 'auto-mode-alist '("\\.lock$" . lockfile-mode))

;; Open files ending in `.lock' as readonly files.
(add-hook 'lockfile-mode-hook #'lockfile--make-buffer-read-only)
​
(provide 'lockfile-mode)
