(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")")
  (newline))

(define (make-segment x y)
  (cons x y))

(define (start-segment x) (car x))
(define (end-segment x) (cdr x))

(define (make-point x y)
  (cons x y))

(define (x-point x) (car x))
(define (y-point x) (cdr x))

(define (average x y)
  (/ (+ x y) 2))

(define (midpoint-segment segment)
  (let ((start-point (start-segment segment)))
  (let ((end-point (end-segment segment)))
    (let ((start-x (x-point start-point)))
    (let ((start-y (y-point start-point)))
    (let ((end-x (x-point end-point)))
    (let ((end-y (y-point end-point)))
    (let ((mid-x (average start-x end-x)))
    (let ((mid-y (average start-y end-y)))
    (make-point mid-x mid-y))))))))))

(define (test-segment)
  (let ((a (make-point 4 4)))
  (let ((b (make-point 0 0)))
  (make-segment a b))))

(print-point (midpoint-segment (test-segment)))
