#lang racket

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
(if (not (> (abs angle) 0.1))
angle
(p (sine (/ angle 3.0)))))

(sine 12.15)
(sine 0.05)

; 12.15 > 0.1...........call-p 1 time
;      12.15/3.0 = 4.05

; 4.05 > 0.1............call-p 2 time
;      4.05/3.0 = 1.35

; 1.35 > 0.1...........call-p 3 time
;      1.35/3.0 = 0.45

; 0.45 > 0.1............ call-p 4 time
;      0.45/3.0 = 0.15

;0.15 > 0.1..............call-p 5 time
;       0.15/3.0 = 0.05

;for 0.01 condition got false.

;p called total five times


