(in-package :issac)

;;------------------------------------------------------------

(deftclass (corkscrew (:constructor %make-corkscrew) (:include joint)))

newtonconstraintcreatecorkscrew

;;------------------------------------------------------------

(defun corkscrew-force (corkscrew)
  (with-foreign-object (v3 :float 3)
    (newtoncorkscrewgetjointforce (%joint-ptr corkscrew) v3)
    (ptr->v3 v3)))

(defun corkscrew-omega (corkscrew)
  (newtoncorkscrewgetjointomega (%joint-ptr corkscrew)))

(defun corkscrew-position (corkscrew)
  (newtoncorkscrewgetjointposit (%joint-ptr corkscrew)))

(defun corkscrew-velocity (corkscrew)
  (newtoncorkscrewgetjointveloc (%joint-ptr corkscrew)))

;;------------------------------------------------------------

;; (defun corkscrew-calc-stop-acceleration (corkscrew desc-ptr position)
;;   "Calculate the the relative linear acceleration needed to stop the
;;    corkscrew at the desired angle. this function can only be called from
;;    a NewtonCorkscrewCallback and it can be used by the application to
;;    implement corkscrew limits."
;;   (newtoncorkscrewcalculatestopaccel (%joint-ptr corkscrew) desc-ptr position))

;; (defun corkscrew-calc-stop-alpha (corkscrew desc-ptr angle)
;;   "Calculate the relative angular acceleration needed to stop the
;;    corkscrew at the desired angle. this function can only be called from
;;    a NewtonCorkscrewCallback and it can be used by the application to
;;    implement corkscrew limits."
;;   (newtoncorkscrewcalculatestopalpha (%joint-ptr corkscrew) desc-ptr angle))

;; (cffi:defcstruct (newtonhingesliderupdatedesc :size 16)
;;   (m-accel :float :offset 0)
;;   (m-minfriction :float :offset 4)
;;   (m-maxfriction :float :offset 8)
;;   (m-timestep :float :offset 12))

;;------------------------------------------------------------