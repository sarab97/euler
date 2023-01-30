;; By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
;; What is the 10 001st prime number?

(defun is-prime (n)
  (loop for i from 2 to (floor (/ n 2))
		if (= (mod n i) 0)
		do (return-from is-prime 0)
		)
  1)

(let ((c 2)
	  (p 3))
  (loop
   (loop while (= (is-prime p) 0) do (incf p 1))
   (when (= c 10001) (return))
   (incf c 1)
   (incf p 2)
   )
  (print p)
  )


;; Output 104743
