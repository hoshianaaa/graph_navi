;; Auto-generated. Do not edit!


(when (boundp 'graph_navigation::graph_naviGoal)
  (if (not (find-package "GRAPH_NAVIGATION"))
    (make-package "GRAPH_NAVIGATION"))
  (shadow 'graph_naviGoal (find-package "GRAPH_NAVIGATION")))
(unless (find-package "GRAPH_NAVIGATION::GRAPH_NAVIGOAL")
  (make-package "GRAPH_NAVIGATION::GRAPH_NAVIGOAL"))

(in-package "ROS")
;;//! \htmlinclude graph_naviGoal.msg.html


(defclass graph_navigation::graph_naviGoal
  :super ros::object
  :slots (_start _goal _checkPoint ))

(defmethod graph_navigation::graph_naviGoal
  (:init
   (&key
    ((:start __start) 0)
    ((:goal __goal) 0)
    ((:checkPoint __checkPoint) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _start (round __start))
   (setq _goal (round __goal))
   (setq _checkPoint __checkPoint)
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:checkPoint
   (&optional __checkPoint)
   (if __checkPoint (setq _checkPoint __checkPoint)) _checkPoint)
  (:serialization-length
   ()
   (+
    ;; int32 _start
    4
    ;; int32 _goal
    4
    ;; int32[] _checkPoint
    (* 4    (length _checkPoint)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _start
       (write-long _start s)
     ;; int32 _goal
       (write-long _goal s)
     ;; int32[] _checkPoint
     (write-long (length _checkPoint) s)
     (dotimes (i (length _checkPoint))
       (write-long (elt _checkPoint i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _start
     (setq _start (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _goal
     (setq _goal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _checkPoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _checkPoint (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _checkPoint i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get graph_navigation::graph_naviGoal :md5sum-) "f7adec3cf8709088ac0c64d29e882640")
(setf (get graph_navigation::graph_naviGoal :datatype-) "graph_navigation/graph_naviGoal")
(setf (get graph_navigation::graph_naviGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
int32 start
int32 goal
int32[] checkPoint

")



(provide :graph_navigation/graph_naviGoal "f7adec3cf8709088ac0c64d29e882640")

