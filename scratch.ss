(define (collatz-rec n)
  (cond ((<= n 1) 1)
  		((even? n) (+ (collatz-rec (/ n 2)) n))
  		(else (+ (collatz-rec (+ 1 (* n 3))) n))))
