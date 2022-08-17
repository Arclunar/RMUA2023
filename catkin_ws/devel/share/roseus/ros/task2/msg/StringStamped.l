;; Auto-generated. Do not edit!


(when (boundp 'task2::StringStamped)
  (if (not (find-package "TASK2"))
    (make-package "TASK2"))
  (shadow 'StringStamped (find-package "TASK2")))
(unless (find-package "TASK2::STRINGSTAMPED")
  (make-package "TASK2::STRINGSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude StringStamped.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass task2::StringStamped
  :super ros::object
  :slots (_stamp _string _img ))

(defmethod task2::StringStamped
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:string __string) (instance std_msgs::String :init))
    ((:img __img) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _string __string)
   (setq _img __img)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:string
   (&rest __string)
   (if (keywordp (car __string))
       (send* _string __string)
     (progn
       (if __string (setq _string (car __string)))
       _string)))
  (:img
   (&rest __img)
   (if (keywordp (car __img))
       (send* _img __img)
     (progn
       (if __img (setq _img (car __img)))
       _img)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; std_msgs/String _string
    (send _string :serialization-length)
    ;; sensor_msgs/Image _img
    (send _img :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; std_msgs/String _string
       (send _string :serialize s)
     ;; sensor_msgs/Image _img
       (send _img :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/String _string
     (send _string :deserialize buf ptr-) (incf ptr- (send _string :serialization-length))
   ;; sensor_msgs/Image _img
     (send _img :deserialize buf ptr-) (incf ptr- (send _img :serialization-length))
   ;;
   self)
  )

(setf (get task2::StringStamped :md5sum-) "c3d6ed81ae932a9d3d6ad84bd01b781f")
(setf (get task2::StringStamped :datatype-) "task2/StringStamped")
(setf (get task2::StringStamped :definition-)
      "time stamp
std_msgs/String string
sensor_msgs/Image img
================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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

")



(provide :task2/StringStamped "c3d6ed81ae932a9d3d6ad84bd01b781f")


