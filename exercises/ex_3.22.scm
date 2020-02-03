(define (make-queue)
    (let ((front-ptr '())
          (rear-ptr '()))

        (define (empty-queue?) (null? front-ptr))
        (define (front-queue)
            (if (empty-queue?)
                (error "FRONT called with an empty queue")
                (car front-ptr)))
        (define (insert-queue! item)
            (let ((new-pair (cons item '())))
                (cond ((empty-queue?)
                       (set! front-ptr new-pair)
                       (set! rear-ptr new-pair)
                       dispatch)
                      (else
                        (set-cdr! rear-ptr new-pair)
                        (set! rear-ptr new-pair)
                        dispatch))))
        (define (delete-queue!)
            (cond ((empty-queue?) 
                   (error "DELETE! called with an empty queue"))
                  (else 
                   (set! front-ptr (cdr front-ptr))
                   dispatch)))
        (define (print-queue) (display front-ptr))

        (define (dispatch m)
            (cond ((eq? m 'empty-queue?) empty-queue?)
                  ((eq? m 'front-queue) front-queue)
                  ((eq? m 'insert-queue!) insert-queue!)
                  ((eq? m 'delete-queue!) delete-queue!)
                  ((eq? m 'print) print-queue)
                  (else (error "Unsupported Queue Operation" m))))
        dispatch))

(define (empty-queue? queue) ((queue 'empty-queue?)))
(define (front-queue queue) ((queue 'front-queue)))
(define (insert-queue! queue item) ((queue 'insert-queue!) item))
(define (delete-queue! queue) ((queue 'delete-queue!)))
(define (print-queue queue)  ((queue 'print)))

(define q (make-queue))

(insert-queue! q 'a)
(print-queue q)

(insert-queue! q 'b)
(print-queue q)

(delete-queue! q)
(print-queue q)

(delete-queue! q)
(print-queue q)
