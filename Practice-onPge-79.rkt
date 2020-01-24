#lang racket

; Summation procedure : commom
(define (sum term a next b)
(if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))


(define (cube a) (* a a a)) ; cube procedure

; integral procedure :
(define (integral f a b dx)
 (define (add-dx x) ; adding procedure
  (+ x dx))
  
(* (sum f (+ a (/ dx 2.0)) add-dx b)
   dx))

(integral cube 0 1 0.01)
(integral cube 0 1 0.001)
