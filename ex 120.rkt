;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex 120|) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
;robert heemann (THE GREAT VLADIMIR SKOVZKY)

;EX 120

;check-expects
(check-expect (juxtapose (cons "hello " (cons "world" empty))) "hello world")

;defining the function
(define (juxtapose los)
  (cond
    [(empty? los) ""]
    [(cons? los)
      (string-append (first los) (juxtapose (rest los)))]))