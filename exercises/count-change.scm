(define (count-change amount)
    (cc amount 5))

(define (cc amount kinds-of-coins)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= kinds-of-coins 0)) 0)
          (else (+ (cc amount (- kinds-of-coins 1))
                   (cc (- amount (first-denomination kinds-of-coins)) kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)
          ((= kinds-of-coins 2) 5)
          ((= kinds-of-coins 3) 10)
          ((= kinds-of-coins 4) 25)
          ((= kinds-of-coins 5) 50)))


(count-change 20)

;
(cc 20 5)
(+ (cc 20 4) (cc -30 5))
(+ (+ (cc 20 3) (cc -5 4)) (cc -30 5))
(+ (+ (+ (cc 20 2) (cc 10 3)) (cc -5 4)) (cc -30 5))
(+ (+ (+ (+ (cc 20 1) (cc 15 2)) (cc 10 3)) (cc -5 4)) (cc -30 5))
(+ (+ (+ (+ (+ (cc 20 0) (cc 19 1)) (cc 15 2)) (cc 10 3)) (cc -5 4)) (cc -30 5))
(+ (+ (+ (+ (+ 0 (cc 1 1)) (cc 15 2)) (cc 10 3)) (cc -5 4)) (cc -30 5))
(+ (+ (+ (+ (+ 0 (+ (cc 1 0) (cc 0 1))) (cc 15 2)) (cc 10 3)) (cc -5 4)) (cc -30 5))
(+ (+ (+ (+ (+ 0 (+ 0 1)) (cc 15 2)) (cc 10 3)) (cc -5 4)) (cc -30 5))
(+ (+ (+ (+ 1 (cc 15 2)) (cc 10 3)) (cc -5 4)) (cc -30 5))
(+ (+ (+ (+ 1 (+ (cc 15 1) (cc 10 2))) (cc 10 3)) (cc -5 4)) (cc -30 5))
(+ (+ (+ (+ 1 (+ 1 (cc 10 2))) (cc 10 3)) (cc -5 4)) (cc -30 5))
(+ (+ (+ (+ 1 (+ 1 (+ (cc 10 1) (cc 5 2)))) (cc 10 3)) (cc -5 4)) (cc -30 5))
(+ (+ (+ (+ 1 (+ 1 (+ 1 (cc 5 2)))) (cc 10 3)) (cc -5 4)) (cc -30 5))
(+ (+ (+ (+ 1 (+ 1 (+ 1 (+ (cc 5 1) (cc 0 2))))) (cc 10 3)) (cc -5 4)) (cc -30 5))
(+ (+ (+ 5 (cc 10 3)) (cc -5 4)) (cc -30 5))
(+ (+ (+ 5 (+ (cc 10 2) (cc 0 3))) (cc -5 4)) (cc -30 5))
(+ (+ (+ 5 (+ 3 1)) (cc -5 4)) (cc -30 5))
(+ (+ 9 0) (cc -30 5))
(+ 9 0)
9