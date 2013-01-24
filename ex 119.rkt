;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex 119|) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
;robert heemann (THE GREAT VLADIMIR SKOVZKY)\

;checks if every boolean in the list is ture

;check expects
(check-expect (all-true (cons true (cons true empty))) true)
(check-expect (all-true (cons false (cons true empty))) false)
(check-expect (all-true (cons true (cons false empty))) false)
(check-expect (all-true (cons false (cons false empty))) false)

;defining the function
(define (all-true lob)
  (cond
    [(empty? lob) true]
    [(cons? lob)
     (if
      (boolean=? (first lob) true) (all-true (rest lob)) false)]))