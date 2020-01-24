#lang racket

;Exercise - 1.18

;procedure that generates an iterative process for multiplying two integers
;in terms of adding, doubling, and halving and uses a logarithmic number of steps

(define (double n) ( + n n)) ;double procedure
(define (halve n) (/ n 2))   ;halve procedure

(define (call-iter-procedure a b) (multiplication 0 a b))  ;calling iterative procedure

(define (multiplication a x y)  ;Body of iteratibve procedure
  (cond (( = y 0) a)
        ((even? y) (multiplication a (double x) (halve y)))
        (else (multiplication (+ a x) x (- y 1)))))
 
(call-iter-procedure 2 3)