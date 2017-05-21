#!/usr/bin/env clisp

(defvar *db* nil)

(defun make-cd(title artist rating ripped)
	(list :title title :artist artist :rating rating :ripped ripped))

(defun add-record(cd)
 (push cd *db*))


(defun dump-db()
 (dolist (cd *db*)
	(format t "~{~a:~10t~a~%~}~%" cd))

; The ~t directive is for tabulating, ~10t tells FORMAT to emit
; enough spaces to move to the tenth column before processing the
; next ~a. A ~t doesn't consume any arguments
;
; ~% tells FORMAT to emit a newline
;
; when FORMAT sees ~{ the next argument to be consumed must be a list,
; FORMAT will loop over the list processing the directives between the
; ~{ and ~}
;
; ~a is the aesthetic directive, it means consume one argument and ouput
; it in human-readable form
(defun dump-db-format()
 (format t "~{~{~a:~10t~a~%~}~%~}" *db*))

