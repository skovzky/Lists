;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |EX 124|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;EX 124
;robert heemann (THE GREAT VLADIMIR SKOVZKY)

;Helper functions check-expects
     ;(sum list)
(check-expect (sum (cons 1 (cons 2 empty))) 3)
(check-expect (sum (cons -1 (cons -2 empty))) -3)
(check-expect (sum (cons 1 (cons -2 empty))) -1)
(check-expect (sum (cons -1 (cons 2 empty))) 1)

     ;(find-amount-in)


     ;(average)


;Helper functions
(define (sum list)
  (cond
    [(empty? list) 0]
    [(cons? list) ((+ (first list) (rest list)) (sum (rest list)))]))

(define (find-amount-in list)
  (cond
    (...)))

;average will take the sum of the numbers in a list and divide them all
(define (average list)
  (cond
    [(empty? list) 0]
    [(cons? list)
     (/ (sum list) (find-amount-in list))