#lang racket
  (define (search-root g guess)
   
  
   (define (newton-method g guess)
      
      ; определяем метод Ньютона. Решение уравнения g(x) = 0, если x неподвижная точка функции f(x) = x - (g(x) / g'(x))
      ; функция вычисляет f(x) = x - (g(x) / g'(x))
      (define (newton-transform g)
        (lambda (x) (- x (/ (g x) ((derive g) x)))
        )
       )
   
      ; собственно сам метод Ньютона. Ищем стабильную точку функции, которая описана выше. Используем процедуры ее поиска и вычисления дифференциала в точке
      (define (newton-guess g guess)
        (fixed-point (newton-transform g) guess)
      )
     
     (newton-guess g guess)  ; вызываем нахождение корней методом Ньютона
   )
  
   ; определяем производную
   ; производная = (g(x + dx) - g(x)) / dx. точку x передаем как параметр внутрь этой процедуры. Например ((derive cube) 5) - производная x^3 в точке 5
    (define (derive g)
     
     (define (derive-func g)
       (lambda (x) 
         (/ (- (g (+ x dx)) (g x)) dx)
        )
     )  
   
     (define dx 0.0001)
     
     (derive-func g) ; вызываем нахождение производной
    ) 
   
  
   
   
   ; процедура нахождения стабильной точки
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
       (display guess) ; выводим текущие предположения
       (newline)
       (let ((next (f guess))) ; пусть следующая итерация- это функция от текущей итерации (например cos(guess)), где guess текущий x)
         (if (close-enough? guess next)
             next
             (try next)
         )
       )
      )
  
      (try first-guess) ; вызываем поиск стабильной точки
    )
  
    (newton-method g guess)  ; вызываем метод Ньютона для поиска корней
) 

   (define (cube x) (* x x x)) 
   
   (define (square x) (* x x))
   
   (define (cubic a b c) ; вычисляет корни уравнения вида x^3 + a*x^2 + b*x + c = 0. x(guess) задает первое предположение, что корень равен заданному числу
     (lambda (x) (+ (* x x x) (* a x x) (* b x) c))
   )  
   
   
   
   
   
   