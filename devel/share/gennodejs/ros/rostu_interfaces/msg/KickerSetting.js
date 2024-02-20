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

class KickerSetting {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.charge_time = null;
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('charge_time')) {
        this.charge_time = initObj.charge_time
      }
      else {
        this.charge_time = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KickerSetting
    // Serialize message field [charge_time]
    bufferOffset = _serializer.int64(obj.charge_time, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.bool(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KickerSetting
    let len;
    let data = new KickerSetting(null);
    // Deserialize message field [charge_time]
    data.charge_time = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rostu_interfaces/KickerSetting';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5eb35c50ef959f485735294a09362452';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 charge_time
    bool action
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KickerSetting(null);
    if (msg.charge_time !== undefined) {
      resolved.charge_time = msg.charge_time;
    }
    else {
      resolved.charge_time = 0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = false
    }

    return resolved;
    }
};

module.exports = KickerSetting;
