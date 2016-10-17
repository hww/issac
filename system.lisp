(in-package :issac)

;;------------------------------------------------------------

(defun newton-version ()
  (newtonworldgetversion))

;;------------------------------------------------------------

(defun %size-of-newton-float ()
  (newtonworldfloatsize))

(eval-when (:execute)
  (assert (= (%size-of-newton-float) (foreign-type-size :float))))

;;------------------------------------------------------------
