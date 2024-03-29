#lang racket
(require "generic_operation.scm")

(define (attach-tag type-tag contents)
  (if (number? contents)
      contents
      (cons type-tag contents)))

(define (type-tag datum)
  (cond ((number? datum) 'scheme-number)
	((pair? datum)(car datum))
	(else (error "Bad tagged datum -- TYPE-TAG" datum)))
  )

(define (contents datum)
  (cond ((number? datum) datum)
	((pair? datum)(cdr datum))
	(else 
	 (error "Bad tagged datum -- CONTENTS" datum))))

(add 10 5); => 15
(sub 10 5); => 5
(mul 10 5); => 50
(div 10 5); => 2
(provide attach-tag type-tag contents)
