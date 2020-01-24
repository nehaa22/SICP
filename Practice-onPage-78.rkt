#lang racket

; Summation procedure : commom
(define (sum term a next b)
(if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))

; Sigma / Summation logic :
; We can replace that three procedures by following single procedure :
; we just need tp pass procedure as parameters on thw basis of what we need to calculate.
; we kave to call this summation procedure in our method.

; PROCEDURE : 1

(define (inc n) (+ n 1))  ;increment procedure
(define (cube a) (* a a a)) ;cube procedure

;sum-of-cube procedure :
(define (sum-cubes a b)  
(sum cube a inc b))

"sum of cubes from 1 to 10 :"
(sum-cubes 1 10) ; calling 

; PROCEDURE : 2

(define (identity x) x)  ;returning itself

;sum-of-integer procedure :
(define (sum-integers a b)
(sum identity a inc b))

"sum of integers from 1 to 10 :"
(sum-integers 1 10) ; calling

; PROCEDURE : 3

(define (pi-term x) ; term procedure
(/ 1.0 (* x (+ x 2))))  
(define (pi-next x) ; ; next procedure
(+ x 4))

; PI-procedure
(define (pi-sum a b) 
(sum pi-term a pi-next b))

"sum-of-PI-terms"
(* 8 (pi-sum 1 1000)) ; calling


