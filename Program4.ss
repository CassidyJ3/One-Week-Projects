;Purpose: Calculates the average of a list of number.
;Name: Joe Cassidy
;Class: CSCI 431
;Date: 20 February, 2019

;recursively adds the elements of a list
(define (sum x)
  (if (null? x)
    0
    (+ (car x) (sum (cdr x) ) ) ) )

;uses sum to calculate the average of a list and displays this
;if the list has length 0, calls makeList with the empty list
(define (average x)
    (if (= ( length x ) 0)
      (makeList x)
      (display (/ (sum x) (length x) ) ) ) )

;recursively takes user input and makes a list of real numbers, then passes it
;to the average function
(define (makeList numList)
  (define value (read))
  (if (real? value)
    (makeList (cons value numList) )
    (average numList) ) )

(begin

  (display "Enter a list of real numbers to calculate their average. ")
  (display "Anything else ends the list.")
  (newline)
  (makeList (list) )
(newline) )
