#lang racket
(define (min x y z)
  (cond  ((and (< x y) (< x z)) x)
         ((and (< y x) (< y z)) y)
         ((and (< z x) (< z y)) z)))

  
(define (proc x y z)
  (cond ((= x (min x y z)) (sqr2  y z))
        ((= y (min x y z)) (sqr2  x z))
        ((= z (min x y z)) (sqr2  x y))))
(define (sqr2 a b)
  (+ (* a a) (* b b)))
