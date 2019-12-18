#lang racket

(define (same-as x y)

   (/ 3
     ( +
        (/ x (* y y))  (* 2 y))))   ; cube appxoximation logic


(define (cube-root x1 y1)
  (if (= y1 (/ 1 (same-as x1 y1))) "yes" "No" )  ; apply logic in method
   )


" 216 is cube of 6  ?? "
(cube-root 216 6)

"======================================"

" 8 is cube of 2  ?? "
(cube-root 8 2)

"======================================"

" 1 is cube of 1  ?? "
(cube-root 1 1)

"======================================"

" 300 is cube of 3  ?? "
(cube-root 300 3)


 

