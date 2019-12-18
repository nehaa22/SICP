;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Practice-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Strings

"Expression using Sunexpression...... "
(+
(* 3
    (+
      (* 2 4)
      (+ 3 5)))

    (+
    (- 10 7)
    6))


"Defining variable................."

(define size 2)
size

(define pii 3.14159 )
(define r 10)
(* pii (* r r))

"Using Variavle...................."

(define circumference (* 2 ( * pii r)))
circumference

"Procedure.........................."

(define (square x) (* x x))
(square 10)
(square 100)
(square (+ 2 3))

(square (square 3))
(square (square 10))

"Procedure inside Procedure.........."
(square (square (square 2)))

(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares  2 3)


"Normal Procedure....................."

(sum-of-squares (+ 5 1) (* 5 2))
(+ (square (+ 5 1)) (square (* 5 2)))
(+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)) )

"Application procedure.............."
(+ (* 6 6) (* 10 10))
(+ 36 100)


"Conditional......................."
(define (absolute x)
   (cond ((> x 0) x)
         ((= x 0) 0)
         ((< x 0) (- x))
  )
)

"Conditional example one..........."
(absolute 22)

"Conditional example two.........."
(absolute -1)

"conditional with else..........."
(define (abso x)
  (cond ((< x 0) (- x))
     (else x)))

(abso 15)
(abs -14)

"IF statement...................."

(define (absol x)
  (if (< x 0)
      (- x)
      x)
  )

(absol -13)

"AND expression result............."

(define x 7)
(and (> x 5) (< x 10)) ;true condition

(define a 22)
(and (> a 5) (< a 10)) ;false condition

(- 2 6 )

(define c 20 )
(define d 10 )

"error expression............."
(define (>== c d) (or (> c d) (= c d)))
(define (>=== c d) (not(< c d)))

(>== 3 4)
(>=== 4 3)






