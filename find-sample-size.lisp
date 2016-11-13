(defun read-input ()
  (read-from-string (nth 0 *args*)))

(defun is-valid (input)
  (if (and (>= input 0.05)
           (< input 0.125))
    t))

(defun find-sample-size (probability)
  (round-or-error (* 2 (no-of-white-ghouls probability))))

(defun no-of-white-ghouls (probability)
  (/ (- 2 (* 4 probability)) (- 1 (* 8 probability))))

(defun round-or-error (probability)
  (if (< (- (round probability) probability) 0.001)
    (round probability)
    "Probability entered would results in partial ghouls"))

(defun main ()
  (let ((input (read-input)))
    (if (is-valid input)
      (write (find-sample-size input))
      (write "Probability in must be in range [0.05 0.125)"))))

(main)
