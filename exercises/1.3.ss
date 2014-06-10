(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (greater x y) 
  (if (> x y) x y))

(define (sos-greater-two x y z)
  (define minl (min x y z))
  (cond ((= minl x) (sum-of-squares y z))
  		((= minl y) (sum-of-squares x z))
  		((= minl z) (sum-of-squares x y))))

(display (sos-greater-two 4 9 13))
(newline)
(display (sos-greater-two 9 13 4))
(newline)
(display (sos-greater-two 13 4 9))
(newline)
