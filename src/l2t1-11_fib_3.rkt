#lang racket
; function f(n) = n / n<3
;            f(n) = f(n - 1) + f(n - 2) + f(n - 3) 

; recursion tree process  
(define (recurse-fib-3 n)
  (cond ((< n 3) n)
   (else (+ (recurse-fib-3 (- n 1)) (recurse-fib-3 (- n 2)) (recurse-fib-3 (- n 3))))
   )
 )

; iteration process

(define (iteration-fib-3 n)

; 0 1 2 3 6 11 20 -> x y z 3 6 11 20 -> 0 x y z 6 11 20
;... x y z ... ->... y z x+y+z ...   
  (define (iter x y z i)
    (if (= i 0) x
               (iter y z (+ x y z) (- i 1))
    )
  )
  
  ; main - enter of procedure
  (if (< n 3) n
      (iter 0 1 2 n)
   )   
)  