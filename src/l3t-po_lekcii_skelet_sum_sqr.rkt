#lang racket
(define (sum-sqr a b)
  
  (define (sum-skeleton term a next b)
    (if (> a b) 0
        (+ (term a) 
        (sum-skeleton term (next a) next b))
    )
  )
  
  (define (sqr a) (* a a))
  
  (define (inc a) (+ a 1))
  
  (sum-skeleton sqr a inc b)
)  