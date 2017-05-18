#!/usr/local/bin/clisp

(defvar *db* nil)

(defun make-cd(title artist rating ripped)
	(list :title title :artist artist :rating rating :ripped ripped))


