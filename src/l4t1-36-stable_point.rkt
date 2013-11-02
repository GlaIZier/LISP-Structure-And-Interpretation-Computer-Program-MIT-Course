#lang racket

(define (fixed-point f first-guess)
  
  (define EPSILON 0.0001)

  (define (abs a)
    (if (< a 0)
        (- a)
        a)
  )
  
  (define (close-enough? a b)
    (< (abs (- a b)) EPSILON)
   )
  
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (f guess))) ; пусть следующая итерация- это функция от текущей итерации (например cos(guess)), где guess текущий x)
      (if (close-enough? guess next)
          next
          (try next)
      )
    )
   )
  
  (try first-guess)
)  