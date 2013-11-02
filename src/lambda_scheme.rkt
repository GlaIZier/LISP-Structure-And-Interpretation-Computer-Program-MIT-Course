#lang racket
(define (f x)
  ( + ((lambda (x) (+ x 4)) 1) x)) ; (f 3) = 8


