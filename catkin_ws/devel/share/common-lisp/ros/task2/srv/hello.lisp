; Auto-generated. Do not edit!


(cl:in-package task2-srv)


;//! \htmlinclude hello-request.msg.html

(cl:defclass <hello-request> (roslisp-msg-protocol:ros-message)
  ((stamp_requset
    :reader stamp_requset
    :initarg :stamp_requset
    :type cl:real
    :initform 0)
   (request
    :reader request
    :initarg :request
    :type cl:string
    :initform ""))
)

(cl:defclass hello-request (<hello-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hello-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hello-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task2-srv:<hello-request> is deprecated: use task2-srv:hello-request instead.")))

(cl:ensure-generic-function 'stamp_requset-val :lambda-list '(m))
(cl:defmethod stamp_requset-val ((m <hello-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-srv:stamp_requset-val is deprecated.  Use task2-srv:stamp_requset instead.")
  (stamp_requset m))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <hello-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-srv:request-val is deprecated.  Use task2-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hello-request>) ostream)
  "Serializes a message object of type '<hello-request>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp_requset)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp_requset) (cl:floor (cl:slot-value msg 'stamp_requset)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hello-request>) istream)
  "Deserializes a message object of type '<hello-request>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp_requset) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hello-request>)))
  "Returns string type for a service object of type '<hello-request>"
  "task2/helloRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hello-request)))
  "Returns string type for a service object of type 'hello-request"
  "task2/helloRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hello-request>)))
  "Returns md5sum for a message object of type '<hello-request>"
  "13d47c285aebc1aeac46ba71c9ef38b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hello-request)))
  "Returns md5sum for a message object of type 'hello-request"
  "13d47c285aebc1aeac46ba71c9ef38b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hello-request>)))
  "Returns full string definition for message of type '<hello-request>"
  (cl:format cl:nil "time stamp_requset~%string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hello-request)))
  "Returns full string definition for message of type 'hello-request"
  (cl:format cl:nil "time stamp_requset~%string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hello-request>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hello-request>))
  "Converts a ROS message object to a list"
  (cl:list 'hello-request
    (cl:cons ':stamp_requset (stamp_requset msg))
    (cl:cons ':request (request msg))
))
;//! \htmlinclude hello-response.msg.html

(cl:defclass <hello-response> (roslisp-msg-protocol:ros-message)
  ((stamp_response
    :reader stamp_response
    :initarg :stamp_response
    :type cl:real
    :initform 0)
   (response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass hello-response (<hello-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hello-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hello-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task2-srv:<hello-response> is deprecated: use task2-srv:hello-response instead.")))

(cl:ensure-generic-function 'stamp_response-val :lambda-list '(m))
(cl:defmethod stamp_response-val ((m <hello-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-srv:stamp_response-val is deprecated.  Use task2-srv:stamp_response instead.")
  (stamp_response m))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <hello-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-srv:response-val is deprecated.  Use task2-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hello-response>) ostream)
  "Serializes a message object of type '<hello-response>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp_response)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp_response) (cl:floor (cl:slot-value msg 'stamp_response)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hello-response>) istream)
  "Deserializes a message object of type '<hello-response>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp_response) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hello-response>)))
  "Returns string type for a service object of type '<hello-response>"
  "task2/helloResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hello-response)))
  "Returns string type for a service object of type 'hello-response"
  "task2/helloResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hello-response>)))
  "Returns md5sum for a message object of type '<hello-response>"
  "13d47c285aebc1aeac46ba71c9ef38b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hello-response)))
  "Returns md5sum for a message object of type 'hello-response"
  "13d47c285aebc1aeac46ba71c9ef38b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hello-response>)))
  "Returns full string definition for message of type '<hello-response>"
  (cl:format cl:nil "time stamp_response~%string response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hello-response)))
  "Returns full string definition for message of type 'hello-response"
  (cl:format cl:nil "time stamp_response~%string response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hello-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hello-response>))
  "Converts a ROS message object to a list"
  (cl:list 'hello-response
    (cl:cons ':stamp_response (stamp_response msg))
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'hello)))
  'hello-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'hello)))
  'hello-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hello)))
  "Returns string type for a service object of type '<hello>"
  "task2/hello")