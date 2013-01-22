;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |ex 117|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;ROBERT HEEMANN (THE GREAT VLADIMIR SKOVZKY)

;EX 117

;create the list of numbers
(define list-of-amounts
  (cons 1 (cons 2 (cons 3 empty))))


;check expect
(check-expect (sum (cons 1 empty)) 1)
(check-expect (sum (cons 2 (cons 2 empty))) 4)

(define (sum loa)
  (cond
    [(empty? loa) 0]
    [(