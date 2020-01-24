#lang racket

; Practice

(define (gcd a b)
(if (= b 0)
a
(gcd b (remainder a b))))


(gcd 206 40)
(gcd 500 50)

; Euclid’s Algorithm

; GCD(206,40) = GCD(40,6)
;             = GCD(6,4)
;             = GCD(4,2)
;             = GCD(2,0)
;             = 2