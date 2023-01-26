;; The prime factors of 13195 are 5, 7, 13 and 29.
;; What is the largest prime factor of the number 600851475143 ?


(defun largest-prime-factor (n)
  (let ((result 2))
	(loop for i from 2 to (floor (sqrt n)) do
		  (when (zerop (mod n i))
			(loop while (zerop (mod n i)) do (setf n (/ n i)))
			(setf result i)))
	(if (> n 1) n result)))

(largest-prime-factor 600851475143)


;; Output 6857
