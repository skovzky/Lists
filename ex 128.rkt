;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex 128|) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
;robert heemann (THE GREAT VLADIMIR SKOVZKY)
;EX 128: add numbers to pi, but without using the + function....

;The assistant
(define (pi-counter n m)
  (cond
    [(= n 0) m]
    [else (pi-counter (sub1 n) (add1 m))]))

;The assistant's boss
(define (add-to-pi n)
  (pi-counter n 3.14159265359))
  