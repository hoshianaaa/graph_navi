; Auto-generated. Do not edit!


(cl:in-package graph_navigation-msg)


;//! \htmlinclude graph_naviFeedback.msg.html

(cl:defclass <graph_naviFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass graph_naviFeedback (<graph_naviFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <graph_naviFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'graph_naviFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graph_navigation-msg:<graph_naviFeedback> is deprecated: use graph_navigation-msg:graph_naviFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <graph_naviFeedback>) ostream)
  "Serializes a message object of type '<graph_naviFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <graph_naviFeedback>) istream)
  "Deserializes a message object of type '<graph_naviFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<graph_naviFeedback>)))
  "Returns string type for a message object of type '<graph_naviFeedback>"
  "graph_navigation/graph_naviFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'graph_naviFeedback)))
  "Returns string type for a message object of type 'graph_naviFeedback"
  "graph_navigation/graph_naviFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<graph_naviFeedback>)))
  "Returns md5sum for a message object of type '<graph_naviFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'graph_naviFeedback)))
  "Returns md5sum for a message object of type 'graph_naviFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<graph_naviFeedback>)))
  "Returns full string definition for message of type '<graph_naviFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'graph_naviFeedback)))
  "Returns full string definition for message of type 'graph_naviFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <graph_naviFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <graph_naviFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'graph_naviFeedback
))