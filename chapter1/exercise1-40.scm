#lang racket
(define (cube c)
  (* c c c))
(define (cubic a b c)
  (lambda (x)
    (+ (cube x)
       (* a (* x x))
       (* b x)
       c)))
