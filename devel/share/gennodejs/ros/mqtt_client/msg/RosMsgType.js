// Auto-generated. Do not edit!

// (in-package mqtt_client.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RosMsgType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.md5 = null;
      this.name = null;
      this.definition = null;
    }
    else {
      if (initObj.hasOwnProperty('md5')) {
        this.md5 = initObj.md5
      }
      else {
        this.md5 = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('definition')) {
        this.definition = initObj.definition
      }
      else {
        this.definition = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RosMsgType
    // Serialize message field [md5]
    bufferOffset = _serializer.string(obj.md5, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [definition]
    bufferOffset = _serializer.string(obj.definition, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RosMsgType
    let len;
    let data = new RosMsgType(null);
    // Deserialize message field [md5]
    data.md5 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [definition]
    data.definition = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.md5);
    length += _getByteLength(object.name);
    length += _getByteLength(object.definition);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mqtt_client/RosMsgType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff43d621269e869c559e9a58071d41e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains information about a ROS Message Type.
    
    string md5          # MD5 sum of ROS message type
    string name         # ROS message type name (e.g. 'std_msgs/Float32')
    string definition   # ROS message type definition (e.g. 'float data')
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RosMsgType(null);
    if (msg.md5 !== undefined) {
      resolved.md5 = msg.md5;
    }
    else {
      resolved.md5 = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.definition !== undefined) {
      resolved.definition = msg.definition;
    }
    else {
      resolved.definition = ''
    }

    return resolved;
    }
};

module.exports = RosMsgType;
