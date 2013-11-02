#lang racket
(define (sqrt-iter estimate x)
  (if (good-enough? estimate x) 
      estimate
      (sqrt-iter (improve estimate x) x)))

(define (good-enough? estimate x)
  (< (abs ( - (* estimate estimate estimate) x)) 0.01))

(define (improve estimate x)
  (/ (+ (/ x (* estimate estimate)) (* 2 estimate)) 3))
  
(define (abs a) 
  (if (< a 0) (- a) a))
