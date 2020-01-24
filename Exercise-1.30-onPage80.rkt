#lang racket

;Exercise - 1.30

;iterative procedure :

;(define (sum term a next b)
;(define (iter a result)
;(if ⟨??⟩
;⟨??⟩
;(iter ⟨??⟩ ⟨??⟩)))
;(iter ⟨??⟩ ⟨??⟩))
; fill missing terms

(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
  (iter a 0))

;- - - - - - - - - - - - - - - - - - - - - - - - - - -end iteration

(define (cube a) (* a a a)) ;cube procedure
(define (inc n) (+ n 1))  ;increment procedure

(define (sum-cubes a b)  
(sum-iter cube a inc b))

"sum of cubes from 1 to 10 :"
(sum-cubes 1 10) ; calling 