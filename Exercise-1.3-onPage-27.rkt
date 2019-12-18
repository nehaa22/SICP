;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise-1.3-onPage-27) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
"Exercise 1.3 on page 27"

(define number1 3)
(define number2 7)
(define number3 2)

"Three Numbers are ............."

number1
number2
number3

(define (greaterOne a b)     ;greater one
(if ( > a  b) a b))

(define (greaterTwo c d)     ;greater two
(if ( > c  d) c d))

(define (square x) (* x x))  ;square

(define (sum-of-squares-of-large-two-number number1 number2 number3) ;sum-of-square
  
   ( + (square(greaterOne number1 number2))  (square (greaterTwo number1 number3)))
)

"Sum of square of largest Number is :" ; print sum

(sum-of-squares-of-large-two-number number1 number2 number3 )
      












