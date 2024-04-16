#lang sicp
(define precision 0.000000001)

(define (sqrt-iter-3 guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter-3 (improve guess x) x)))

(define (good-enough? guess old-guess)
  (< (abs (/ (- guess old-guess) guess)) precision))


(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (sqrt-3 x)
  (sqrt-iter-3 1 x))

(sqrt-3 81)

