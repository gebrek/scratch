; sums up hailstone eq
(define (collatz-rec n)
  (cond ((<= n 1) 1)
  		((even? n) (+ (collatz-rec (/ n 2)) n))
  		(else (+ (collatz-rec (+ 1 (* n 3))) n))))

; how did that summation function go?
(define (sig-simple n f)
  (sig 0 0 n f))
(define (sig sum i n f)
  (let ((st (+ sum (f i))))
	(cond ((>= i n) st)
		  (else (sig st (+ i 1) n f)))))
; (sig-simple 100 (lambda (x) (+ (/ x 2) 5))) => 3030
; woo. summation as recursively defined linear interative process
; O(1) memory complexity (i think)
