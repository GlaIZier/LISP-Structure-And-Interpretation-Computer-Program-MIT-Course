#lang racket
(define (f x y)
  (let ((a (+ x 1))
         (b (+ x y))
        ) 
   (+ a b)
   )
)

(define (fa x y a)
 (+ (let ((a (+ x 1))
         (b (+ x y))
        ) 
   (+ a b)
   )
    
   a ; этот а из параметров процедуры а не let
 )
  
)
