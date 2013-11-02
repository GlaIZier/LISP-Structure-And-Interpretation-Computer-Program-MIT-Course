#lang racket
(define (af f)
  (lambda (x) (+ x (f x))))

