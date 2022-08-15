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





(defclass task2::helloRequest
  :super ros::object
  :slots (_stamp_requset _request ))

(defmethod task2::helloRequest
  (:init
   (&key
    ((:stamp_requset __stamp_requset) (instance ros::time :init))
    ((:request __request) "")
    )
   (send-super :init)
   (setq _stamp_requset __stamp_requset)
   (setq _request (string __request))
   self)
  (:stamp_requset
   (&optional __stamp_requset)
   (if __stamp_requset (setq _stamp_requset __stamp_requset)) _stamp_requset)
  (:request
   (&optional __request)
   (if __request (setq _request __request)) _request)
  (:serialization-length
   ()
   (+
    ;; time _stamp_requset
    8
    ;; string _request
    4 (length _request)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp_requset
       (write-long (send _stamp_requset :sec) s) (write-long (send _stamp_requset :nsec) s)
     ;; string _request
       (write-long (length _request) s) (princ _request s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp_requset
     (send _stamp_requset :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp_requset :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass task2::helloResponse
  :super ros::object
  :slots (_stamp_response _response ))

(defmethod task2::helloResponse
  (:init
   (&key
    ((:stamp_response __stamp_response) (instance ros::time :init))
    ((:response __response) "")
    )
   (send-super :init)
   (setq _stamp_response __stamp_response)
   (setq _response (string __response))
   self)
  (:stamp_response
   (&optional __stamp_response)
   (if __stamp_response (setq _stamp_response __stamp_response)) _stamp_response)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; time _stamp_response
    8
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp_response
       (write-long (send _stamp_response :sec) s) (write-long (send _stamp_response :nsec) s)
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp_response
     (send _stamp_response :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp_response :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass task2::hello
  :super ros::object
  :slots ())

(setf (get task2::hello :md5sum-) "13d47c285aebc1aeac46ba71c9ef38b6")
(setf (get task2::hello :datatype-) "task2/hello")
(setf (get task2::hello :request) task2::helloRequest)
(setf (get task2::hello :response) task2::helloResponse)

(defmethod task2::helloRequest
  (:response () (instance task2::helloResponse :init)))

(setf (get task2::helloRequest :md5sum-) "13d47c285aebc1aeac46ba71c9ef38b6")
(setf (get task2::helloRequest :datatype-) "task2/helloRequest")
(setf (get task2::helloRequest :definition-)
      "time stamp_requset
string request
---
time stamp_response
string response
")

(setf (get task2::helloResponse :md5sum-) "13d47c285aebc1aeac46ba71c9ef38b6")
(setf (get task2::helloResponse :datatype-) "task2/helloResponse")
(setf (get task2::helloResponse :definition-)
      "time stamp_requset
string request
---
time stamp_response
string response
")



(provide :task2/hello "13d47c285aebc1aeac46ba71c9ef38b6")


