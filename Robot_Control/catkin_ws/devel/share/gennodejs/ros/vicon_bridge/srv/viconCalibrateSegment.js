// Auto-generated. Do not edit!

// (in-package vicon_bridge.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class viconCalibrateSegmentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.subject_name = null;
      this.segment_name = null;
      this.z_offset = null;
      this.n_measurements = null;
    }
    else {
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
      if (initObj.hasOwnProperty('z_offset')) {
        this.z_offset = initObj.z_offset
      }
      else {
        this.z_offset = 0.0;
      }
      if (initObj.hasOwnProperty('n_measurements')) {
        this.n_measurements = initObj.n_measurements
      }
      else {
        this.n_measurements = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type viconCalibrateSegmentRequest
    // Serialize message field [subject_name]
    bufferOffset = _serializer.string(obj.subject_name, buffer, bufferOffset);
    // Serialize message field [segment_name]
    bufferOffset = _serializer.string(obj.segment_name, buffer, bufferOffset);
    // Serialize message field [z_offset]
    bufferOffset = _serializer.float64(obj.z_offset, buffer, bufferOffset);
    // Serialize message field [n_measurements]
    bufferOffset = _serializer.int32(obj.n_measurements, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type viconCalibrateSegmentRequest
    let len;
    let data = new viconCalibrateSegmentRequest(null);
    // Deserialize message field [subject_name]
    data.subject_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [segment_name]
    data.segment_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [z_offset]
    data.z_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [n_measurements]
    data.n_measurements = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.subject_name);
    length += _getByteLength(object.segment_name);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vicon_bridge/viconCalibrateSegmentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f57831d02c84e74975c7663933fe42d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string subject_name
    string segment_name
    float64 z_offset
    int32 n_measurements
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new viconCalibrateSegmentRequest(null);
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

    if (msg.z_offset !== undefined) {
      resolved.z_offset = msg.z_offset;
    }
    else {
      resolved.z_offset = 0.0
    }

    if (msg.n_measurements !== undefined) {
      resolved.n_measurements = msg.n_measurements;
    }
    else {
      resolved.n_measurements = 0
    }

    return resolved;
    }
};

class viconCalibrateSegmentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.status = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type viconCalibrateSegmentResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type viconCalibrateSegmentResponse
    let len;
    let data = new viconCalibrateSegmentResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vicon_bridge/viconCalibrateSegmentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd8b451f9e0c65ec25938e0acbd102d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string status
    geometry_msgs/PoseStamped pose
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new viconCalibrateSegmentResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = {
  Request: viconCalibrateSegmentRequest,
  Response: viconCalibrateSegmentResponse,
  md5sum() { return 'ca1b34be858a36828126364b1a577794'; },
  datatype() { return 'vicon_bridge/viconCalibrateSegment'; }
};
