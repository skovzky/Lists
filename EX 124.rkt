;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |EX 124|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;EX 124
;robert heemann (THE GREAT VLADIMIR SKOVZKY)


;======================================================
;           hello  world... my small world....
;======================================================


;Helper functions check-expects
     ;(sum list)
(check-expect (sum (cons 1 (cons 2 empty))) 3)
(check-expect (sum (cons -1 (cons -2 empty))) -3)
(check-expect (sum (cons 1 (cons -2 empty))) -1)
(check-expect (sum (cons -1 (cons 2 empty))) 1)


     ;(how-many)



;Function Check-Expects
     ;(divide)


;======================================================
;Helper functions
     ;(sum)
(define (sum list)
  (cond
    [(empty? list) 0]
    [else (+ (first list) (sum (rest list)))]))


     ;(how-many)
(define (how-many list)
  (cond
    [(empty? list) 0]
    [else (+ (how-many (rest list)) 1)]))


;======================================================
;average will take the sum of the numbers in a list and divide them all
(define (average list)
  (cond
    [(empty? list) 0]
    [(cons? list)
     (/ (sum list) (how-many list))]))