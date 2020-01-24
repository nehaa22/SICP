#lang racket

; Exercise 1.17
;Should perform integer multiplication by means of repeated addition.

; (define (* a b)
;     (if (= b 0)
;           0
;           (+ a (* a (- b 1)))))

(define (double n) ( + n n)) ; double procedure
(define (halve n) (/ n 2))   ; halve procedure

(define (expto a b)
  (cond ((= b 1) a)
        ((even? b) (double (expto a (halve b))))
        (else (+ a (double (expto a (halve (- b 1))))))))

(expto 2 5)