#lang racket

;Exercise : 1.20

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(gcd 206 40)

; Normal Order Evaluation :

;(gcd 40 (remainder 206 40)
; (If ( = (remainder 206 40) 0)
;             40
;             (gcd  (remainder 206 40) (remainder 40 (remainder 206 40))))
;
;(gcd  (remainder 206 40) (remainder 40 (remainder 206 40)))
;      (If (= (remainder 40 (remainder 206 40)) 0)
;            (remainder 206 40)
;            (gcd  (remainder 40 (remainder 206 40))  (remainder (remainder 206 40)  (remainder    40 (remainder 206 40)))))
;
;(gcd  (remainder 40 (remainder 206 40))  (remainder (remainder 206 40)  (remainder    40 (remainder 206 40))))
;     if( (= (remainder (remainder 206 40)  (remainder    40 (remainder 206 40))) 0 )
;             (remainder 40 (remainder 206 40))
;             (gcd ( (remainder (remainder 206 40)  (remainder    40 (remainder 206 40)))  (remainder  (remainder 40 (remainder 206 40))  (remainder (remainder 206 40)  (remainder    40 (remainder 206 40))) )))))


; Applicative Order Evaluation :

;(gcd 206 40)
;(gcd 40 (remainder 206 40))
;(gcd 40 6)
;(gcd 6 (remainder 40 6))
;(gcd 6 4)
;(gcd 4 (remainder 6 4))
;(gcd 4 2)
;(gcd 2 (remainder 4 2))
;(gcd 2 0)
;2