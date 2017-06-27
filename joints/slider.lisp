(in-package :issac)

;;------------------------------------------------------------

(defun make-slider (world parent-body child-body pivot-point-v3 pin-dir-v3)
  (with-foreign-array (piv3 pivot-point-v3 '(:array :float 3))
    (with-foreign-array (dir3 pin-dir-v3 '(:array :float 3))
      (newtonconstraintcreateslider
       (%world-ptr world) piv3 dir3
       (%body-ptr child-body)
       (%body-ptr parent-body)))))

;;------------------------------------------------------------

(defun slider-position (slider)
  (newtonslidergetjointposit (%joint-ptr slider)))

(defun slider-velocity (slider)
  (newtonslidergetjointveloc (%joint-ptr slider)))

;;------------------------------------------------------------

;; (defun corkscrew-calc-stop-acceleration (corkscrew desc-ptr position)
;;   (newtonslidercalculatestopaccel (%joint-ptr corkscrew) desc-ptr position))

;;------------------------------------------------------------

(defun slider-callback (joint)
  (%slider-callback joint))

(defun (setf slider-callback) (callback joint)
  (let ((cb (if callback
                (get-callback '%slider-cb)
                (null-pointer))))
    (NewtonSliderSetUserCallback (%joint-ptr joint) cb)
    (setf (%slider-callback joint) callback)))
