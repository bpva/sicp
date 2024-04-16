#lang sicp
(define precision 0.000000001)

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess old-guess)
  (< (abs (/ (- guess old-guess) guess)) precision))


(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1 x))

(sqrt 98888)

