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

class KickerModule {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trigger = null;
      this.charger = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('trigger')) {
        this.trigger = initObj.trigger
      }
      else {
        this.trigger = false;
      }
      if (initObj.hasOwnProperty('charger')) {
        this.charger = initObj.charger
      }
      else {
        this.charger = false;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KickerModule
    // Serialize message field [trigger]
    bufferOffset = _serializer.bool(obj.trigger, buffer, bufferOffset);
    // Serialize message field [charger]
    bufferOffset = _serializer.bool(obj.charger, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KickerModule
    let len;
    let data = new KickerModule(null);
    // Deserialize message field [trigger]
    data.trigger = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [charger]
    data.charger = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rostu_interfaces/KickerModule';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba394d88a5c3e539dd36bff996be48d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool trigger
    bool charger
    string status
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KickerModule(null);
    if (msg.trigger !== undefined) {
      resolved.trigger = msg.trigger;
    }
    else {
      resolved.trigger = false
    }

    if (msg.charger !== undefined) {
      resolved.charger = msg.charger;
    }
    else {
      resolved.charger = false
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    return resolved;
    }
};

module.exports = KickerModule;
