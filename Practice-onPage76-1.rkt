#lang racket

;Procedures as argument :

;FIRST-PROCEDURE

(define (sum-integers a b)
	 (if (> a b)	
			 0 
			(+ a (sum-integers (+ a 1) b))))

; call procedure
(sum-integers 3 8)

; solution :

; suppose a = 3 and b = 8
; (sum-integers 3 8)...3 > 8... false
; 3 + (sum-integers 4 8)...4 > 8...false
; 3 + 4 + (sum-integers 5 8)...5 > 8...false
; 3 + 4 + 5 (sum-integers 6 8)...6 > 8...false
; 3 + 4 + 5 + 6 (sum-integers 7 8)...7 > 8...false
; 3 + 4 + 5 + 6 + 7 (sum-integers 8 8)...8 > 8...false
; 3 + 4 + 5 + 6 + 7 + 8 (sum-integers 9 8)...9 > 8...true
; 3 + 4 + 5 + 6 + 7 + 8 + 0
; 3 + 4 + 5 + 6 + 7 + 8
; 3 + 4 + 5 + 6 + 15
; 3 + 4 + 5 + 21
; 3 + 4 + 26
; 3 + 30
; 33 : Answer



;SECOND-PROCEDURE


; cube procedure :
(define (cube a) (* a a a))

; sum-of-cube procedure :
(define (sum-cubes a b)
  (if (> a b)
      0
      (+ (cube a)
         (sum-cubes (+ a 1) b))))

;call procedure
(sum-cubes 3 8)

; Solution :

; suppose a = 3 and b = 8
; (sum-cubes 3 8)...3 > 8... false
; (cube 3 ) + (sum-cubes 4 8)...4 > 8...false
; (cube 3 ) + (cube 4 ) + (sum-cubes 5 8)...5 > 8...false
; (cube 3 ) + (cube 4 ) + (cube 5 ) (sum-cubes 6 8)...6 > 8...false
; (cube 3 ) + (cube 4 ) + (cube 5 ) + (cube 6 ) + (sum-cubes 7 8)...7 > 8...false
; (cube 3 ) + (cube 4 ) + (cube 5 ) + (cube 6 ) + (cube 7 ) + (sum-cubes 8 8)...8 > 8...false
; (cube 3 ) + (cube 4 ) + (cube 5 ) + (cube 6 ) + (cube 7 ) + (cube 8 ) + (sum-cubes 9 8)...9 > 8...true
; (cube 3 ) + (cube 4 ) + (cube 5 ) + (cube 6 ) + (cube 7 ) + (cube 8 ) + 0
; (cube 3 ) + (cube 4 ) + (cube 5 ) + (cube 6 ) + (cube 7 ) + 512
; (cube 3 ) + (cube 4 ) + (cube 5 ) + (cube 6 )+ 855
; (cube 3 ) + (cube 4 ) + (cube 5 ) + 1071
; (cube 3 ) + (cube 4 ) + 1196
; (cube 3 ) + 1260
; 1287


; THIRD-PROCEDURE

; calculate
; 1/ 1 · 3 + 1/ 5 · 7 + 1/ 9 · 11

;procedure-body
(define (pi-sum a b)
  (if (> a b)
      0
      (+ (/ 1.0 (* a (+ a 2)))
         (pi-sum (+ a 4) b))))

; call procedure
(pi-sum 1 11)

; solution

; suppose a = 1 and b = 11
; (pi-sum 1 11)...1 > 11... false
; (/ 1.0 (* 1 (+ 1 2))) + (pi-sum (+ 1 4) 11) --> (pi-sum 5 11)...5 > 11...false
; (/ 1.0 (* 1 (+ 1 2))) + (/ 1.0 (* 5 (+ 5 2))) + (pi-sum (+ 5 4) 11) --> (pi-sum 9 11)...9 > 11...false
; (/ 1.0 (* 1 (+ 1 2))) + (/ 1.0 (* 5 (+ 5 2))) + (/ 1.0 (* 9 (+ 9 2))) (pi-sum (+ 9 4) 11) +  --> (pi-sum 13 11)...13 > 11...true
; (/ 1.0 (* 1 (+ 1 2))) + (/ 1.0 (* 5 (+ 5 2))) + (/ 1.0 (* 9 (+ 9 2))) + 0
; 0.372005772005772









