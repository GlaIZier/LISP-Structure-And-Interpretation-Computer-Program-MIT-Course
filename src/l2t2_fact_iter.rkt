#lang racket
(define (fact x)

  (define (fact-iter result i)
         (if (> i x)
             result
             (fact-iter (* result i) (+ i 1))
         )
  )
  
  (if (= x 0) 
       1
       (fact-iter 1 1) 
   )
)

  