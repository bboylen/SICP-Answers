(define us-coins (list 50 25 10 5 1))

(define uk-coins (list 20 50 100 10 5 2 1 0.5))


(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination coin-values))
            (cc (- amount
                   (first-denomination coin-values))
                coin-values)))))


(define (no-more? values) (null? values) )

(define (except-first-denomination values) (cdr values) )
(define (first-denomination values) (car values) )


(display (cc 100 us-coins))
