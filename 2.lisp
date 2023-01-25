;; Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
;; 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
;; By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.


(let ((a 0)
	  (b 1)
	  (c 0)
	  (sum 0))
  (loop
	(setq c (+ a b))
	(when (> c 4000000) (print sum) (return sum))
	(if (= (mod c 2) 0) (incf sum c))
	(setq a b)
	(setq b c)
  )
)


;; Output 4613732