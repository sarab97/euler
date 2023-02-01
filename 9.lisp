(defun find_prod (sum)
  (loop for a from 1 to (1- (truncate (/ sum 3)))
		do (loop for b from (1+ a) to (1- (/ (- sum a) 2))
			 do (let ((c (- sum a b)))
				  (when (and (> c b) (= (* c c) (+ (* a a) (* b b))))
					(return-from find_prod (* a b c)))))))

(find_prod 1000)
