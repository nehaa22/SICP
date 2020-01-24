#lang racket

; Exercise 1.23

; modify smallest divisor by returning 3 if divisor is 2 else return (divisor + 2)
;because of this, the runtime of procedure will reduce

; helping square-procedure :
(define (square x) (* x x))

; helping divide procedure

(define(divides? a b )
  (= (remainder b a) 0))

; next procedure for test-divisor

(define (next n)
  (if (= n 2)
      3
      (+ n 2)))

; using this above in main smallest-divisor procedure

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

; main-procedure for smallest-divisor

(define (smallest-divisor n) (find-divisor n 2))

; Example :

(smallest-divisor 100000)
(smallest-divisor 999)

