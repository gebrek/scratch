(define (f-rec n)
  (if (< n 3) 
	n
	(+ (f-rec (- n 1)) 
	   (* 2 (f-rec (- n 2))) 
	   (* 3 (f-rec (- n 3))))))

(define (f-iter n)
  (f-iter-helper 0 n))

(define (f-iter-helper sum n)
  (if (< n 3)
  	n
  	(f-iter-helper (+ sum (f-iter-step n)) n)))

(define (f-iter-step n)
  (+ (
