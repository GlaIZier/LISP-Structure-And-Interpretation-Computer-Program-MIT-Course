#lang racket
(define (pascal-triangle row col)
  
  ; get index number of the element in the (row ; col) position
  (define (get-n row result)
    (if (= row 1) (+ result col)
        (get-n (- row 1) (+ result (- row 1)))
     )
  )      
  
  ; sum of previous upper numbers(recursion)
  ; left upper number has (row - 1 ; col - 1) position
  ; right upper number has ( row - 1 ; col) position
  ; recursion ends when col = 1 (left border of triangle) or col = right (right border of triangle) 
  (define (iter n row col)
    (if (or (= col 1) (= col row)) 1
                                   (+ (iter (- n row) (- row 1) (- col 1)) (iter (- n (- row 1)) (- row 1) col))
                                                 
    ) 
  )
  (iter (get-n row 0) row col)
 )