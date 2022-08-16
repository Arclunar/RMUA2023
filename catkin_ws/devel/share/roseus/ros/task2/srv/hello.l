;; Auto-generated. Do not edit!


(when (boundp 'task2::hello)
  (if (not (find-package "TASK2"))
    (make-package "TASK2"))
  (shadow 'hello (find-package "TASK2")))
(unless (find-package "TASK2::HELLO")
  (make-package "TASK2::HELLO"))
(unless (find-package "TASK2::HELLOREQUEST")
  (make-package "TASK2::HELLOREQUEST"))
(unless (find-package "TASK2::HELLORESPONSE")
  (make-package "TASK2::HELLORESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass task2::helloRequest
  :super ros::object
  :slots (_stamp_requset _request _img ))

(defmethod task2::helloRequest
  (:init
   (&key
    ((:stamp_requset __stamp_requset) (instance ros::time :init))
    ((:request __request) "")
    ((:img __img) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _stamp_requset __stamp_requset)
   (setq _request (string __request))
   (setq _img __img)
   self)
  (:stamp_requset
   (&optional __stamp_requset)
   (if __stamp_requset (setq _stamp_requset __stamp_requset)) _stamp_requset)
  (:request
   (&optional __request)
   (if __request (setq _request __request)) _request)
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
    ;; time _stamp_requset
    8
    ;; string _request
    4 (length _request)
    ;; sensor_msgs/Image _img
    (send _img :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp_requset
       (write-long (send _stamp_requset :sec) s) (write-long (send _stamp_requset :nsec) s)
     ;; string _request
       (write-long (length _request) s) (princ _request s)
     ;; sensor_msgs/Image _img
       (send _img :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp_requset
     (send _stamp_requset :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp_requset :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/Image _img
     (send _img :deserialize buf ptr-) (incf ptr- (send _img :serialization-length))
   ;;
   self)
  )

(defclass task2::helloResponse
  :super ros::object
  :slots (_stamp_request_arrived _stamp_response _response _img ))

(defmethod task2::helloResponse
  (:init
   (&key
    ((:stamp_request_arrived __stamp_request_arrived) (instance ros::time :init))
    ((:stamp_response __stamp_response) (instance ros::time :init))
    ((:response __response) "")
    ((:img __img) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _stamp_request_arrived __stamp_request_arrived)
   (setq _stamp_response __stamp_response)
   (setq _response (string __response))
   (setq _img __img)
   self)
  (:stamp_request_arrived
   (&optional __stamp_request_arrived)
   (if __stamp_request_arrived (setq _stamp_request_arrived __stamp_request_arrived)) _stamp_request_arrived)
  (:stamp_response
   (&optional __stamp_response)
   (if __stamp_response (setq _stamp_response __stamp_response)) _stamp_response)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
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
    ;; time _stamp_request_arrived
    8
    ;; time _stamp_response
    8
    ;; string _response
    4 (length _response)
    ;; sensor_msgs/Image _img
    (send _img :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp_request_arrived
       (write-long (send _stamp_request_arrived :sec) s) (write-long (send _stamp_request_arrived :nsec) s)
     ;; time _stamp_response
       (write-long (send _stamp_response :sec) s) (write-long (send _stamp_response :nsec) s)
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;; sensor_msgs/Image _img
       (send _img :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp_request_arrived
     (send _stamp_request_arrived :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp_request_arrived :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp_response
     (send _stamp_response :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp_response :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/Image _img
     (send _img :deserialize buf ptr-) (incf ptr- (send _img :serialization-length))
   ;;
   self)
  )

(defclass task2::hello
  :super ros::object
  :slots ())

(setf (get task2::hello :md5sum-) "1d267952d5d13e898b2e45c1c34041f3")
(setf (get task2::hello :datatype-) "task2/hello")
(setf (get task2::hello :request) task2::helloRequest)
(setf (get task2::hello :response) task2::helloResponse)

(defmethod task2::helloRequest
  (:response () (instance task2::helloResponse :init)))

(setf (get task2::helloRequest :md5sum-) "1d267952d5d13e898b2e45c1c34041f3")
(setf (get task2::helloRequest :datatype-) "task2/helloRequest")
(setf (get task2::helloRequest :definition-)
      "time stamp_requset
string request
sensor_msgs/Image img

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
---
time stamp_request_arrived
time stamp_response
string response
sensor_msgs/Image img

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

(setf (get task2::helloResponse :md5sum-) "1d267952d5d13e898b2e45c1c34041f3")
(setf (get task2::helloResponse :datatype-) "task2/helloResponse")
(setf (get task2::helloResponse :definition-)
      "time stamp_requset
string request
sensor_msgs/Image img

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
---
time stamp_request_arrived
time stamp_response
string response
sensor_msgs/Image img

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



(provide :task2/hello "1d267952d5d13e898b2e45c1c34041f3")


