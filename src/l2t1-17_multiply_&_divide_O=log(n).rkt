#lang racket
; 3*9 -> (3+3)*8 -> (double(double(double(3+3))) / 9-> 9-1-> halve(halve(halve(9-1)
(define (my* a b)
  
  (define (double x)
    (* 2 x)
   )
  
  (define (halve x)
    (/ x 2)
   )
  
  ; is numeric is even
  (define (even? n)
    (= (remainder n 2) 0))
  
  (define (iter a b)
    (if (= b 1) a 
               (if (even? b) (iter (double a) (halve b)) ; quick multiply by double a and halve b
                  (iter (+ a a) (- b 1)) ; if b is not even just add a to a. b becomes even 
               )
    )
   )
  
  ; main
  (iter a b)
)  
  
  
  