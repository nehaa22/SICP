#lang racket

; Using Recursion :

;Exercise 1.11: A function f is defined by the rule that
;f (n) =
;
; n if n < 3,
;  f (n - 1) + 2f (n - 2) + 3f (n - 3) if n ≥ 3.

;Solution :

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))


"If number < 3 will print it as it is"

(f 2)   ;result = 2
(f 1)   ;result = 1


"If number >= 3 will print computed result"
(f 12)  ;result = 10661
(f 5)   ;result = 25




