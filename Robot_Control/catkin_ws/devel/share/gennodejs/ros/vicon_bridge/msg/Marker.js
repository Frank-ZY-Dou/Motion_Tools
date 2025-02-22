// Auto-generated. Do not edit!

// (in-package vicon_bridge.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Marker {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.marker_name = null;
      this.subject_name = null;
      this.segment_name = null;
      this.translation = null;
      this.occluded = null;
    }
    else {
      if (initObj.hasOwnProperty('marker_name')) {
        this.marker_name = initObj.marker_name
      }
      else {
        this.marker_name = '';
      }
      if (initObj.hasOwnProperty('subject_name')) {
        this.subject_name = initObj.subject_name
      }
      else {
        this.subject_name = '';
      }
      if (initObj.hasOwnProperty('segment_name')) {
        this.segment_name = initObj.segment_name
      }
      else {
        this.segment_name = '';
      }
      if (initObj.hasOwnProperty('translation')) {
        this.translation = initObj.translation
      }
      else {
        this.translation = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('occluded')) {
        this.occluded = initObj.occluded
      }
      else {
        this.occluded = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Marker
    // Serialize message field [marker_name]
    bufferOffset = _serializer.string(obj.marker_name, buffer, bufferOffset);
    // Serialize message field [subject_name]
    bufferOffset = _serializer.string(obj.subject_name, buffer, bufferOffset);
    // Serialize message field [segment_name]
    bufferOffset = _serializer.string(obj.segment_name, buffer, bufferOffset);
    // Serialize message field [translation]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.translation, buffer, bufferOffset);
    // Serialize message field [occluded]
    bufferOffset = _serializer.bool(obj.occluded, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Marker
    let len;
    let data = new Marker(null);
    // Deserialize message field [marker_name]
    data.marker_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [subject_name]
    data.subject_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [segment_name]
    data.segment_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [translation]
    data.translation = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [occluded]
    data.occluded = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.marker_name);
    length += _getByteLength(object.subject_name);
    length += _getByteLength(object.segment_name);
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vicon_bridge/Marker';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da6f93747c24b19a71932ae4b040f489';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string marker_name
    string subject_name
    string segment_name
    geometry_msgs/Point translation
    bool occluded
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Marker(null);
    if (msg.marker_name !== undefined) {
      resolved.marker_name = msg.marker_name;
    }
    else {
      resolved.marker_name = ''
    }

    if (msg.subject_name !== undefined) {
      resolved.subject_name = msg.subject_name;
    }
    else {
      resolved.subject_name = ''
    }

    if (msg.segment_name !== undefined) {
      resolved.segment_name = msg.segment_name;
    }
    else {
      resolved.segment_name = ''
    }

    if (msg.translation !== undefined) {
      resolved.translation = geometry_msgs.msg.Point.Resolve(msg.translation)
    }
    else {
      resolved.translation = new geometry_msgs.msg.Point()
    }

    if (msg.occluded !== undefined) {
      resolved.occluded = msg.occluded;
    }
    else {
      resolved.occluded = false
    }

    return resolved;
    }
};

module.exports = Marker;
