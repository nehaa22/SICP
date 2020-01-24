#lang racket

;Exercise - 1.32

;added accumulate in procedure
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value  term (next a) next b))))

(define (sum term a next b)
    (accumulate + 0 term a next b))


(define (identity x) x)  ; returning itself
(define (inc x) (+ x 1)) ; increment procedure

;sum-of-integer procedure :
(define (sum-integers a b)
(sum identity a inc b))

"sum of integers from 1 to 10 :"
(sum-integers 1 10) ; calling