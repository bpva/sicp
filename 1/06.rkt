#lang sicp
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
(average guess (/ x guess)))

(define (average x y)
(/ (+ x y) 2))

(define (square x) (* x x))

(sqrt-iter 1 3)
; what happens is when we call a function (new-if) first things happens is evaluation of all arguments
; hence recursion happens (through sqrt-iter)