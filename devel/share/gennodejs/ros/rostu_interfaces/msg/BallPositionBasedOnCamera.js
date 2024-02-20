// Auto-generated. Do not edit!

// (in-package rostu_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BallPositionBasedOnCamera {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.angle = null;
      this.x_on_camera = null;
      this.y_on_camera = null;
      this.x_real = null;
      this.y_real = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0;
      }
      if (initObj.hasOwnProperty('x_on_camera')) {
        this.x_on_camera = initObj.x_on_camera
      }
      else {
        this.x_on_camera = 0;
      }
      if (initObj.hasOwnProperty('y_on_camera')) {
        this.y_on_camera = initObj.y_on_camera
      }
      else {
        this.y_on_camera = 0;
      }
      if (initObj.hasOwnProperty('x_real')) {
        this.x_real = initObj.x_real
      }
      else {
        this.x_real = 0;
      }
      if (initObj.hasOwnProperty('y_real')) {
        this.y_real = initObj.y_real
      }
      else {
        this.y_real = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BallPositionBasedOnCamera
    // Serialize message field [distance]
    bufferOffset = _serializer.int64(obj.distance, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.int64(obj.angle, buffer, bufferOffset);
    // Serialize message field [x_on_camera]
    bufferOffset = _serializer.int64(obj.x_on_camera, buffer, bufferOffset);
    // Serialize message field [y_on_camera]
    bufferOffset = _serializer.int64(obj.y_on_camera, buffer, bufferOffset);
    // Serialize message field [x_real]
    bufferOffset = _serializer.int64(obj.x_real, buffer, bufferOffset);
    // Serialize message field [y_real]
    bufferOffset = _serializer.int64(obj.y_real, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BallPositionBasedOnCamera
    let len;
    let data = new BallPositionBasedOnCamera(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [x_on_camera]
    data.x_on_camera = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [y_on_camera]
    data.y_on_camera = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [x_real]
    data.x_real = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [y_real]
    data.y_real = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rostu_interfaces/BallPositionBasedOnCamera';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c32d588a00265202dbcab5311745340d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 distance
    int64 angle
    int64 x_on_camera
    int64 y_on_camera
    int64 x_real
    int64 y_real
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BallPositionBasedOnCamera(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0
    }

    if (msg.x_on_camera !== undefined) {
      resolved.x_on_camera = msg.x_on_camera;
    }
    else {
      resolved.x_on_camera = 0
    }

    if (msg.y_on_camera !== undefined) {
      resolved.y_on_camera = msg.y_on_camera;
    }
    else {
      resolved.y_on_camera = 0
    }

    if (msg.x_real !== undefined) {
      resolved.x_real = msg.x_real;
    }
    else {
      resolved.x_real = 0
    }

    if (msg.y_real !== undefined) {
      resolved.y_real = msg.y_real;
    }
    else {
      resolved.y_real = 0
    }

    return resolved;
    }
};

module.exports = BallPositionBasedOnCamera;
