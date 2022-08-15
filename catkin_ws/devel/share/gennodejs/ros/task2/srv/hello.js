// Auto-generated. Do not edit!

// (in-package task2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class helloRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp_requset = null;
      this.request = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type helloRequest
    // Serialize message field [stamp_requset]
    bufferOffset = _serializer.time(obj.stamp_requset, buffer, bufferOffset);
    // Serialize message field [request]
    bufferOffset = _serializer.string(obj.request, buffer, bufferOffset);
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
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.request.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task2/helloRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f323de8e59ddbf8c268a99e3929710a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp_requset
    string request
    
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

    return resolved;
    }
};

class helloResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp_response = null;
      this.response = null;
    }
    else {
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type helloResponse
    // Serialize message field [stamp_response]
    bufferOffset = _serializer.time(obj.stamp_response, buffer, bufferOffset);
    // Serialize message field [response]
    bufferOffset = _serializer.string(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type helloResponse
    let len;
    let data = new helloResponse(null);
    // Deserialize message field [stamp_response]
    data.stamp_response = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [response]
    data.response = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.response.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task2/helloResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f351e82a09ba72557d1bb2ddee72a89f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp_response
    string response
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new helloResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: helloRequest,
  Response: helloResponse,
  md5sum() { return '13d47c285aebc1aeac46ba71c9ef38b6'; },
  datatype() { return 'task2/hello'; }
};
