;; (fast-fib i) consumes i and produces the number in the fibonacci
;;    sequence in the ith position
;; fast-fib: Nat -> Num
;; requires: the number in the first position is 1
;; Examples:
(check-expect (fast-fib 0) 0)
(check-expect (fast-fib 1) 1)
(check-expect (fast-fib 2) 1)

(define (fast-fib i)
  (local [(define (fast-fib/acc fib-1 fib-2 ith-position)
            (cond
              [(= ith-position 1) fib-2]
              [else (fast-fib/acc fib-2 (+ fib-1 fib-2)
                                  (sub1 ith-position))]))]

    (cond
      [(= i 0) 0]
      [else (fast-fib/acc 0 1 i)])))
      
