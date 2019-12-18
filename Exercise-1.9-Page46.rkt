#lang racket

(define (inc a ) ;inc
  (+ a 1))

(define (dec a ) ;dec
  (- a 1))


(define (plus a b)
  (if (= a 0) 
	b 
	(inc (plus (dec a) b))))

"First Case : Using Recursion"
(plus 4 5)

; (+ a b) : replace with  (add a b)

;(Define (add 4 5))

; (add 4 5)  		 4 != 0	 false
; (Inc  (add 3 5))  		3 != 0 	false
; (Inc  (inc (add 2 5)) ) 		2 != 0 	false
; (Inc  (inc (inc  (add 1 5)) )) 		1 != 0 	false
; (Inc  (inc (inc  (inc  (add 0 5)) )) 		0 == 0 true
; (Inc  (inc (inc  (inc  (5)) )) 
; (Inc  (inc (inc  (6 )) ))
; (Inc  (inc (7)))
; (Inc  (8))

;9 : Answer

;Follows Recursion
;* expansion followed by contraction with deferred operation (addition)

;————————————————————

(define (plus2 a b) 
(if (= a 0)
 	b ;
	(plus2 (dec a) (inc b))))

(plus2 4 5)

; (+ a b) : replace with  (add a b)


; (add 4 5)			4 != 0	 false
; ( add (dec 4) (inc 5) )
; (add  3 6)			3 != 0 	false
; ( add (dec 3) (inc 6) )
; (add  2 7)			2 != 0 	false
; ( add (dec 2) (inc 7 )
; (add  1 8)			1 != 0 	false
; ( add (dec 1) (inc 8) )
; (add  0 9)			0 == 0 true

;9 : Answer

; Follows Iteration
; Process does not grow and shrink.
; Keep  track of current values of variable.
