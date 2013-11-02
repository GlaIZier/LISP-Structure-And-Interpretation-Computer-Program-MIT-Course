#lang racket
(define (simple? n)
  
  (define (simple-iter iter)
   (if (= (makea iter) 0) #t    
       (if (= (remainder (exp (makea iter) n) n) (makea iter)) 
          (simple-iter (+ iter 1))
          #f
        )  
    )
   ) 

 (define (makea i) 
   (quotient n (+ (* i i) 1))
 ) 
 
 
 (define (exp a n)
   (if (= n 0) 1
       (if (= n 1) a
           (* a (exp a (- n 1)))
           )
  ))
 
 (simple-iter 1)  
)  