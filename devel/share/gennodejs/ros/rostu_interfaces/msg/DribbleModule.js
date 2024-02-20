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

class DribbleModule {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_motor = null;
      this.right_motor = null;
    }
    else {
      if (initObj.hasOwnProperty('left_motor')) {
        this.left_motor = initObj.left_motor
      }
      else {
        this.left_motor = 0.0;
      }
      if (initObj.hasOwnProperty('right_motor')) {
        this.right_motor = initObj.right_motor
      }
      else {
        this.right_motor = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DribbleModule
    // Serialize message field [left_motor]
    bufferOffset = _serializer.float64(obj.left_motor, buffer, bufferOffset);
    // Serialize message field [right_motor]
    bufferOffset = _serializer.float64(obj.right_motor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DribbleModule
    let len;
    let data = new DribbleModule(null);
    // Deserialize message field [left_motor]
    data.left_motor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_motor]
    data.right_motor = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rostu_interfaces/DribbleModule';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fbb6fd297edf2b990d3b5effd8454d72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 left_motor
    float64 right_motor
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DribbleModule(null);
    if (msg.left_motor !== undefined) {
      resolved.left_motor = msg.left_motor;
    }
    else {
      resolved.left_motor = 0.0
    }

    if (msg.right_motor !== undefined) {
      resolved.right_motor = msg.right_motor;
    }
    else {
      resolved.right_motor = 0.0
    }

    return resolved;
    }
};

module.exports = DribbleModule;
