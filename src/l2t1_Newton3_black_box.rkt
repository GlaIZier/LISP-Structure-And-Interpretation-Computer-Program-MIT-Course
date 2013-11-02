#lang racket
(define (sqrt x)
  
  (define (sqrt-iter estimate)
    (if (good-enough? estimate) 
        estimate
        (sqrt-iter (improve estimate)))) ; рекурсивный вызов процедуры приближения к ответу по методу Ньютона

  (define (good-enough? estimate)
    (< (abs ( - (* estimate estimate estimate) x)) 0.01)) ; проверка достаточности приближения

  (define (improve estimate)
    (/ (+ (/ x (* estimate estimate)) (* 2 estimate)) 3)) ; улучшение текущей оценки
  
  (define (abs a) 
    (if (< a 0) (- a) a)) ; модуль числа
  
  (sqrt-iter 1) ; begin of procedure
  
 )
  