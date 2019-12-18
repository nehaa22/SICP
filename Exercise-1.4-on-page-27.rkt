#lang racket
" Exercise 1.4 on page 27 "

(define numberA 3)
(define numberB 4)

(define(a-plus-abs-b a b)
  ( (if (> b 0) + -) a b)
)
  
  
(define (solution c d)
  (if(> d 0) (+ c d) (- c d))
  )

(solution 3 4)
