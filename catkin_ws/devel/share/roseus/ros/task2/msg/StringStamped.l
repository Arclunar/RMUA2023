;; Auto-generated. Do not edit!


(when (boundp 'task2::StringStamped)
  (if (not (find-package "TASK2"))
    (make-package "TASK2"))
  (shadow 'StringStamped (find-package "TASK2")))
(unless (find-package "TASK2::STRINGSTAMPED")
  (make-package "TASK2::STRINGSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude StringStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass task2::StringStamped
  :super ros::object
  :slots (_header _string ))

(defmethod task2::StringStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:string __string) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _string __string)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:string
   (&rest __string)
   (if (keywordp (car __string))
       (send* _string __string)
     (progn
       (if __string (setq _string (car __string)))
       _string)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/String _string
    (send _string :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/String _string
       (send _string :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/String _string
     (send _string :deserialize buf ptr-) (incf ptr- (send _string :serialization-length))
   ;;
   self)
  )

(setf (get task2::StringStamped :md5sum-) "bd6d9ba9e57c109b2cf3ec89b7a36367")
(setf (get task2::StringStamped :datatype-) "task2/StringStamped")
(setf (get task2::StringStamped :definition-)
      "std_msgs/Header header
std_msgs/String string
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: std_msgs/String
string data

")



(provide :task2/StringStamped "bd6d9ba9e57c109b2cf3ec89b7a36367")


