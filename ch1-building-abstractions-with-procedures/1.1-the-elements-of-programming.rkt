#lang sicp

; Exercise 1.1
  ; 10
  ; > 10

  ; (+ 5 3 4)
  ; > 12

  ; (- 9 1)
  ; > 8

  ; (/ 6 2)
  ; > 3

  ; (+ (* 2 4) (- 4 6))
  ; > 6

; Exercise 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7))) ; = -37/150

; Exercise 1.3 
(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (>= x y)
  (not (< x y)))

(define (<= x y)
  (not (> x y)))

(define (sum-of-squares-of-two-largest x y z)
  (cond ((and (<= z x) (<= z y)) (sum-of-squares x y))
        ((and (<= y x) (<= y z)) (sum-of-squares x z))
        (else (sum-of-squares y z))))

; Exercise 1.4 
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
  #|
  If b is strictly positive, it returns a + b.
  Otherwise, it returns a - b.
  |#

; Exercise 1.5 
(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

  ; What is the behavior of (test 0 (p))?

#|
  Applicative-order evaluation:
  Normal-order evaluation: 
|# 