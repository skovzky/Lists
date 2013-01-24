;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex 121|) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
;robert heemann (THE GREAT VLADIMIR SKOVZKY)
;makes sure teh pics are teh right size yays

;define the images
(define pic1 
  (square 30 "solid" "black"))
(define rec
  (rectangle 70 30 "solid" "red"))

;check-expects


;defining the function
(define (ill-sized? loi n)
  (cond
    [(empty? loi) "no images, please insert an image into the list"]
    [(cons? loi
     (if
      (and (= (image-width (first loi) n) (image-height (first loi) n)) (ill-sized (rest loi) n))))]))