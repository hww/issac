(in-package :issac)

;;------------------------------------------------------------
;;
;; NewtonMaterial* is a pair so we call it material-pair
;;
;; MaterialGroupID is what we call a material (it is represented as an int)
;;
;;------------------------------------------------------------

(defn world-default-material ((world world)) (signed-byte 32)
  "Gets the defaul material for this world.

   A Material can be interpreted as the nodes of a dense graph. The edges of
   the graph are called material-pairs and we describe the relationships
   between pairs of materials.

   When the Newton world is created, the default material is created by the
   engine. When bodies are created the application assigns a material to the
   body."
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (NewtonMaterialGetDefaultGroupID (%world-ptr world)))


;; NewtonMaterialCreateGroupID


(defn create-material ((world world)) (signed-byte 32)
  "Create a new material.

   A Material can be interpreted as the nodes of a dense graph. The edges of
   the graph are called material-pairs and we describe the relationships
   between pairs of materials.

   When the Newton world is created, the default material is created by the
   engine. When bodies are created the application assigns a material to the
   body.

   Note: The only way to destroy a material after its creation is by
   destroying all the bodies and calling the function `destroy-all-materials`"
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (NewtonMaterialCreateGroupID (%world-ptr world)))

(defn destroy-all-materials ((world world)) null
  "Remove all materials from the Newton world. This function must be called
   after there are no more rigid bodies in the word."
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (NewtonMaterialDestroyAllGroupID (%world-ptr world))
  nil)

(defn material-pair-body-colliding-shape ((material-pair material-pair)
                                          (body body))
    geometry
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (%geom-ptr->geom
   (newtonmaterialgetbodycollidingshape
    (%material-pair-ptr material-pair)
    (%body-ptr body))))

(defn material-pair-contact-face-attribute ((material-pair material-pair))
    (unsigned-byte 32)
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialgetcontactfaceattribute
   (%material-pair-ptr material-pair)))

(defn material-pair-contact-force ((material-pair material-pair)
                                   (body body))
    single-float
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (with-foreign-object (force :float)
    (newtonmaterialgetcontactforce
     (%material-pair-ptr material-pair)
     (%body-ptr body)
     force)
    (mem-aref force :float)))

(defn material-pair-contact-max-normal-impact ((material-pair material-pair))
    single-float
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialgetcontactmaxnormalimpact
   (%material-pair-ptr material-pair)))

(defn material-pair-contact-max-tangent-impact ((material-pair material-pair)
                                                (index (signed-byte 32)))
    single-float
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialgetcontactmaxtangentimpact
   (%material-pair-ptr material-pair)
   index))

(defn material-pair-contact-normal-speed ((material-pair material-pair))
    single-float
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialgetcontactnormalspeed
   (%material-pair-ptr material-pair)))

(defn material-pair-contact-penetration ((material-pair material-pair))
    single-float
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialgetcontactpenetration
   (%material-pair-ptr material-pair)))

(defn material-pair-contact-tangent-directions ((material-pair material-pair)
                                                (body body))
    (values (simple-array single-float (3))
            (simple-array single-float (3)))
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (with-foreign-objects ((t0 :float 3)
                         (t1 :float 3))
    (newtonmaterialgetcontacttangentdirections
     (%material-pair-ptr material-pair)
     (%body-ptr body) t0 t1)
    (values (ptr->v3 t0) (ptr->v3 t1))))

(defn material-pair-contact-tangent-speed ((material-pair material-pair)
                                           (index (signed-byte 32)))
    single-float
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialgetcontacttangentspeed
   (%material-pair-ptr material-pair)
   index))

(defn material-pair-set-callback-userdata ((material-pair material-pair)
                                           (material-a (signed-byte 32))
                                           (material-b (signed-byte 32))
                                           (ptr foreign-pointer))
    null
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialsetcallbackuserdata
   (%material-pair-ptr material-pair)
   material-a
   material-b
   ptr)
  nil)

(defn material-pair-set-contact-elasticity ((material-pair material-pair)
                                            (restitution single-float))
    null
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialsetcontactelasticity
   (%material-pair-ptr material-pair)
   restitution)
  nil)

(defn material-pair-set-contact-friction-coef
    ((material-pair material-pair)
     (static-friction-coefficient single-float)
     (kinetic-friction-coefficient single-float)
     (index (signed-byte 32)))
    null
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialsetcontactfrictioncoef
   (%material-pair-ptr material-pair)
   static-friction-coefficient
   kinetic-friction-coefficient
   index)
  nil)

;;;-------arse


(defn material-pair-set-contact-friction-state ((material-pair material-pair)
                                                (state (signed-byte 32))
                                                (index (signed-byte 32)))
    null
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  ;; {TODO} what is the state in lisp? (its an int in C)
  (newtonmaterialsetcontactfrictionstate
   (%material-pair-ptr material-pair)
   state
   index)
  nil)

(defn material-pair-set-contact-softness ((material-pair material-pair)
                                          (softness single-float))
    null
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialsetcontactsoftness
   (%material-pair-ptr material-pair)
   softness)
  nil)

(defn material-pair-set-contact-tangent-acceleration ((material-pair material-pair)
                                                      (acceleration single-float)
                                                      (index (signed-byte 32)))
    null
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialsetcontacttangentacceleration
   (%material-pair-ptr material-pair)
   acceleration
   index)
  nil)

(defn material-pair-set-contact-tangent-friction ((material-pair material-pair)
                                                  (friction single-float)
                                                  (index (signed-byte 32)))
    null
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialsetcontacttangentfriction
   (%material-pair-ptr material-pair)
   friction
   index)
  nil)

(defn world-set-default-material-collidable ((world world)
                                             (material-a (signed-byte 32))
                                             (material-b (signed-byte 32))
                                             (state (signed-byte 32)))
    null
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  ;; {TODO} how do we represent state?
  (newtonmaterialsetdefaultcollidable
   (%world-ptr world)
   material-a
   material-b
   state)
  nil)

(defn world-set-default-material-elasticity (world
                                             (material-a (signed-byte 32))
                                             (material-b (signed-byte 32))
                                             (elasticity single-float))
    null
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialsetdefaultelasticity
   (%world-ptr world)
   material-a
   material-b
   elasticity)
  nil)

(defn world-set-default-material-friction
    ((world world)
     (material-a (signed-byte 32))
     (material-b (signed-byte 32))
     (static-friction-coefficient single-float)
     (kinetic-friction-coefficient single-float))
    null
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialsetdefaultfriction
   (%world-ptr world)
   material-a
   material-b
   static-friction-coefficient
   kinetic-friction-coefficient)
  nil)

(defn world-set-default-material-softness ((world world)
                                           (material-a (signed-byte 32))
                                           (material-b (signed-byte 32))
                                           (softness single-float))
    null
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialsetdefaultsoftness
   (%world-ptr world)
   material-a
   material-b
   softness)
  nil)

(defn world-set-material-pair-surface-thickness ((world world)
                                                 (material-a (signed-byte 32))
                                                 (material-b (signed-byte 32))
                                                 (thickness single-float))
    null
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (newtonmaterialsetsurfacethickness
   (%world-ptr world)
   material-a
   material-b
   thickness)
  nil)

(defn material-contact-rotate-tangent-directions
    ((material-pair material-pair)
     (vec3 (simple-array single-float (3))))
    null
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (with-foreign-array (v3 vec3 '(:array :float 3))
    (newtonmaterialcontactrotatetangentdirections
     (%material-pair-ptr material-pair)
     v3))
  nil)

(defn material-pair-contact-position-and-normal
    ((material-pair material-pair)
     (body body))
    (values (simple-array single-float (3))
            (simple-array single-float (3)))
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (with-foreign-objects ((pos3 :float 3)
                         (norm3 :float 3))
    (newtonmaterialgetcontactpositionandnormal
     (%material-pair-ptr material-pair)
     (%body-ptr body) pos3 norm3)
    (values (ptr->v3 pos3) (ptr->v3 norm3))))

(defn material-pair-contact-position ((material-pair material-pair)
                                      (body body))
    (simple-array single-float (3))
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (with-foreign-objects ((pos3 :float 3)
                         (norm3 :float 3))
    (newtonmaterialgetcontactpositionandnormal
     (%material-pair-ptr material-pair)
     (%body-ptr body) pos3 norm3)
    (ptr->v3 pos3)))

(defn material-pair-contact-normal ((material-pair material-pair)
                                    (body body))
    (simple-array single-float (3))
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (with-foreign-objects ((pos3 :float 3)
                         (norm3 :float 3))
    (newtonmaterialgetcontactpositionandnormal
     (%material-pair-ptr material-pair)
     (%body-ptr body) pos3 norm3)
    (ptr->v3 norm3)))

(defn (setf material-pair-contact-position)
    ((pos3 (simple-array single-float (3)))
     (material-pair material-pair))
    (simple-array single-float (3))
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (with-foreign-array (p3 pos3 '(:array :float 3))
    (newtonmaterialsetcontactposition
     (%material-pair-ptr material-pair)
     p3))
  pos3)

(defn (setf material-pair-contact-normal)
    ((vec3 (simple-array single-float (3)))
     (material-pair material-pair))
    (simple-array single-float (3))
  (declare (optimize (speed 3) (safety 1) (debug 1)))
  (with-foreign-array (n3 vec3 '(:array :float 3))
    (newtonmaterialsetcontactnormaldirection
     (%material-pair-ptr material-pair)
     n3))
  vec3)

;; NewtonMaterialSetCollisionCallback
;; {TODO} need a bit more info on contacts process before doing this
