#lang racket

(define (p) (p))  ; procedure calling itself. 

(define (test x y)
  (if ( = x 0) 0 y))

(test 0 6)
(test 6 8)
(test 0 p)

(test 0 (p))  ;(infinite loop) 





