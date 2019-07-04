(load "ch2_interval.scm")

(define (par1 r1 r2)
    (div-interval (mul-interval r1 r2)
                  (add-interval r1 r2)))

(define (par2 r1 r2)
    (let ((one (make-interval 1 1)))
        (div-interval one
                      (add-interval (div-interval one r1)
                                    (div-interval one r2)))))

(define A (make-interval 3 5))
(define B (make-interval 4 6))

(print-interval (par1 A B))
(print-interval (par2 A B))

(print-interval (div-interval A A))
(print-interval (div-interval A B))

(define C (make-center-percent 4 0.25))
(define D (make-center-percent 5 0.2))
(print-interval (div-interval C C))
(print-interval (div-interval C D))