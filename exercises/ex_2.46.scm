(define (make-vect x y) (cons x y))
(define (xcor-vect v) (car v))
(define (ycor-vect v) (cdr v))

(define (add-vect a b)
    (make-vect (+ (xcor-vect a) (xcor-vect b))
               (+ (ycor-vect a) (ycor-vect b))))

(define (add-vect a b)
    (make-vect (- (xcor-vect a) (xcor-vect b))
               (- (ycor-vect a) (ycor-vect b))))

(define (scale-vect s v)
    (make-vect (* s (xcor-vect v))
               (* s (ycor-vect v))))