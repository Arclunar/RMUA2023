// Auto-generated. Do not edit!

// (in-package task2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class helloRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp_requset = null;
      this.request = null;
      this.img = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp_requset')) {
        this.stamp_requset = initObj.stamp_requset
      }
      else {
        this.stamp_requset = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = '';
      }
      if (initObj.hasOwnProperty('img')) {
        this.img = initObj.img
      }
      else {
        this.img = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type helloRequest
    // Serialize message field [stamp_requset]
    bufferOffset = _serializer.time(obj.stamp_requset, buffer, bufferOffset);
    // Serialize message field [request]
    bufferOffset = _serializer.string(obj.request, buffer, bufferOffset);
    // Serialize message field [img]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.img, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type helloRequest
    let len;
    let data = new helloRequest(null);
    // Deserialize message field [stamp_requset]
    data.stamp_requset = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [request]
    data.request = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [img]
    data.img = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.request.length;
    length += sensor_msgs.msg.Image.getMessageSize(object.img);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task2/helloRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0f6f416a2af49e3daddd0d1010b6ece';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp_requset
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new helloRequest(null);
    if (msg.stamp_requset !== undefined) {
      resolved.stamp_requset = msg.stamp_requset;
    }
    else {
      resolved.stamp_requset = {secs: 0, nsecs: 0}
    }

    if (msg.request !== undefined) {
      resolved.request = msg.request;
    }
    else {
      resolved.request = ''
    }

    if (msg.img !== undefined) {
      resolved.img = sensor_msgs.msg.Image.Resolve(msg.img)
    }
    else {
      resolved.img = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

class helloResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp_request_arrived = null;
      this.stamp_response = null;
      this.response = null;
      this.img = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp_request_arrived')) {
        this.stamp_request_arrived = initObj.stamp_request_arrived
      }
      else {
        this.stamp_request_arrived = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('stamp_response')) {
        this.stamp_response = initObj.stamp_response
      }
      else {
        this.stamp_response = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = '';
      }
      if (initObj.hasOwnProperty('img')) {
        this.img = initObj.img
      }
      else {
        this.img = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type helloResponse
    // Serialize message field [stamp_request_arrived]
    bufferOffset = _serializer.time(obj.stamp_request_arrived, buffer, bufferOffset);
    // Serialize message field [stamp_response]
    bufferOffset = _serializer.time(obj.stamp_response, buffer, bufferOffset);
    // Serialize message field [response]
    bufferOffset = _serializer.string(obj.response, buffer, bufferOffset);
    // Serialize message field [img]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.img, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type helloResponse
    let len;
    let data = new helloResponse(null);
    // Deserialize message field [stamp_request_arrived]
    data.stamp_request_arrived = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [stamp_response]
    data.stamp_response = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [response]
    data.response = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [img]
    data.img = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.response.length;
    length += sensor_msgs.msg.Image.getMessageSize(object.img);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task2/helloResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf0398511687f596674663b2fa272f87';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new helloResponse(null);
    if (msg.stamp_request_arrived !== undefined) {
      resolved.stamp_request_arrived = msg.stamp_request_arrived;
    }
    else {
      resolved.stamp_request_arrived = {secs: 0, nsecs: 0}
    }

    if (msg.stamp_response !== undefined) {
      resolved.stamp_response = msg.stamp_response;
    }
    else {
      resolved.stamp_response = {secs: 0, nsecs: 0}
    }

    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = ''
    }

    if (msg.img !== undefined) {
      resolved.img = sensor_msgs.msg.Image.Resolve(msg.img)
    }
    else {
      resolved.img = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = {
  Request: helloRequest,
  Response: helloResponse,
  md5sum() { return '1d267952d5d13e898b2e45c1c34041f3'; },
  datatype() { return 'task2/hello'; }
};
