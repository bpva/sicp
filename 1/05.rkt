#lang sicp

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

;with applicative evaluation order we would get 0, because we don't need to enter the recursion