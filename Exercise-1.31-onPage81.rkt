#lang racket

;Exercise : 1.31

;product procedure

;returned 1 instead of 0, because it's multiplication
; added multiplication operation

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (inc n) (+ n 1))  ;increment procedure
(define (cube a) (* a a a)) ;cube procedure

;sum-of-cube procedure :
(define (product-cubes a b)  
(product cube a inc b))

"sum of cubes from 1 to 10 :"
(product-cubes 1 10) ; calling 