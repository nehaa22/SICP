#lang racket


;square
(define (square x)
  (* x x))

;Theta
(define theta
  (/ 
    (+ 1 (sqrt 5))
    2)
  )

;Gyama
(define gyama
  (/ 
    (- 1 (sqrt 5))
    2)
  )

;print Theta
"Value of Theta : "
theta

;print Gyama
"Value of Gyama : "
gyama

;Fib function
(define (fib n)
(cond ((= n 0) 0)
((= n 1) 1)
(else (+ (fib (- n 1))
(fib (- n 2))))))

;Fib of 2
"fib of 2"
(fib 2)
(define given (fib 2))

"given value is "
given

(define number
  ( /
  (- (square theta) (square gyama))
  (sqrt 5))

  )

"print numerator"
number

"Fib(n) = (φn - ψn)/√5"
(if( = given number)
"proved"
"Not Proved")





;Output :

;"Value of Theta : "
;1.618033988749895
;"Value of Gyama : "
;-0.6180339887498949
;"fib of 2"
;1
;"given value is "
;1
;"print numerator"
;1.0
;"Fib(n) = (φn - ψn)/√5"
;"proved"

