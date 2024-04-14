#lang sicp

(define (sum-squares-of-two-larger-numbers a b c)
  (cond ((and (<= a b) (<= a c)) (sum-of-squares b c))
        ((and (<= b a) (<= b c)) (sum-of-squares a c))
        ((and (<= c a) (<= c b)) (sum-of-squares a b))))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (square x)
  (* x x))

(sum-squares-of-two-larger-numbers 1 2 3)