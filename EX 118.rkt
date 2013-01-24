;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |EX 118|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;robert heemann (THE GREAT VLADIMIR SKOVZKY)
;EX 118
;Looks at a list and sees if every item in the list is positive: less than 0

;check expects, all cases (for lists with 2 items)
(check-expect (pos? empty) true)
(check-expect (pos? (cons 2 (cons 2 empty))) true)
(check-expect (pos? (cons -2 (cons 2 empty))) false)
(check-expect (pos? (cons 2 (cons -2 empty))) false)
(check-expect (pos? (cons -2 (cons -2 empty))) false)

;Defining the function
(define (pos? loa)
  (cond
   [(empty? loa) true]
   [(cons? loa)
    (if
     (>= (first loa) 0) (pos? (rest loa)) false)]))