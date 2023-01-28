;; 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
;; What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

(defun get_gcd (x y)
  (if (= y 0)
	  x
	  (get_gcd y (mod x y))))

(defun get_lcm (x y)
  (/ (* x y) (get_gcd x y)))

(reduce #'getlcm (loop for i from 1 to 20 collect i))

;; Output 232792560
