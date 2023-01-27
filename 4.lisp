;; A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
;; Find the largest palindrome made from the product of two 3-digit numbers.

(defun is-palindrome (n)
  (let ((original n)
		(reverse 0))
	(loop while (> n 0)
		  do (setq reverse (+ (* 10 reverse) (mod n 10)))
		  (setq n (floor n 10)))
	(if (= original reverse)
		(return-from is-palindrome 1)
		(return-from is-palindrome 0))))


(defun find-palindrome ()
  (let ((x 100)
		(y 100)
		(num 0))
	(loop
	 (setq y 100)
	 (loop
	  (when (= (is-palindrome (* x y)) 1)
		(if (< num (* x y))
			(setq num (* x y))
		 )
		)
	  (incf y 1)
	  (when (> y 1000) (return y))
	  )
	 (incf x 1)
	 (when (> x 1000) (return x))
	 )
	(return-from find-palindrome num)
	)
  )


(print (find-palindrome))

;; Output 906609
