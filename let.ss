(define p-pairs
  (let ((list1 '(a b c)) (list2 '(d e f)))
  (cons (cons (car list1)
  			  (car list2))
  		(cons (car (cdr list1))
  			  (car (cdr list2))))))

(define (s-sub a b)
  (let ((a3 (* 3 a)))
  	(+ (- a3 b) (+ a3 b))))

(define (l-sub a b c)
  (let ((ls (list a b c)))
  	(cons (car ls)
		  (cdr ls))))

(define (a243-unsub)
  (let ((x 'a) (y 'b))
  	(list (let ((x 'c)) (cons x y))
  		  (let ((y 'd)) (cons x y)))))
;; evaluates to:
;; ((c . b) (a . d))

(define (a243-sub)
  (let ((ah 'a) (bh 'b) (ch 'c) (dh 'd))
  	(list (cons ch bh)
  		  (cons ah dh))))

(define (b243-unsub)
  (let ((x '((a b) c)))
  	(cons (let ((x (cdr x)))
  			(car x))
  		  (let ((x (car x)))
  		  	(cons (let ((x (cdr x)))
  		  			(car x))
  		  		  (cons (let ((x (car x)))
  		  		  		  x)
  		  		  		(cdr x)))))))
; that's actually pretty disgusting
(define (b243-sub)
  (let ((x '((a b) c)))
  	(cons (cadr x)
  		  (cons (cadar x)
  		  		(cons (caar x)
  		  			  (cdar x))))))
; lol

;(define (lammy)
;  ((lambda (x) (+ x x))))
; still don't quite get lambdas ;_;

;(define sds ((double (lambda (x) (+ x x))))
;  (list (double (* 3 4))
;  		(double (/ 99 11))
;  		(double (- 2 7))))

(define double-func
  (lambda (f x) (f x x)))

(define libly
  (let ((x 'a))
	(let ((f (lambda (y) (list x y))))
	  (f 'b))))

(define ably
  (let ((f (let ((x 'sam))
  			 (lambda (y z) (list x y z)))))
  	(f 'i 'am)))
; lambdas, making more sense now
