;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |EX 128|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;Robert Heemann (THE GREAT VLADIMIR SKOVZKY)
;EX 128: adding a number to pi...
;compute (+ n pi) with out using "+"


;check-expects
;(check-expect (add-to pi 1))


;definition(s)
(define add-to-pi n
  ((cons pi empty)
   add1 pi))