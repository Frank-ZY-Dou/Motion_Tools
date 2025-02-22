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

class viconGrabPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.subject_name = null;
      this.segment_name = null;
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
      if (initObj.hasOwnProperty('n_measurements')) {
        this.n_measurements = initObj.n_measurements
      }
      else {
        this.n_measurements = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type viconGrabPoseRequest
    // Serialize message field [subject_name]
    bufferOffset = _serializer.string(obj.subject_name, buffer, bufferOffset);
    // Serialize message field [segment_name]
    bufferOffset = _serializer.string(obj.segment_name, buffer, bufferOffset);
    // Serialize message field [n_measurements]
    bufferOffset = _serializer.int32(obj.n_measurements, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type viconGrabPoseRequest
    let len;
    let data = new viconGrabPoseRequest(null);
    // Deserialize message field [subject_name]
    data.subject_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [segment_name]
    data.segment_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [n_measurements]
    data.n_measurements = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.subject_name);
    length += _getByteLength(object.segment_name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vicon_bridge/viconGrabPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4045133337c2e7a711effc5b44dfbbb6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string subject_name
    string segment_name
    int32 n_measurements
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new viconGrabPoseRequest(null);
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

    if (msg.n_measurements !== undefined) {
      resolved.n_measurements = msg.n_measurements;
    }
    else {
      resolved.n_measurements = 0
    }

    return resolved;
    }
};

class viconGrabPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
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
    // Serializes a message object of type viconGrabPoseResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type viconGrabPoseResponse
    let len;
    let data = new viconGrabPoseResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vicon_bridge/viconGrabPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '236213ed6979c1ab1c49bd1bc04ace9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
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
    const resolved = new viconGrabPoseResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
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
  Request: viconGrabPoseRequest,
  Response: viconGrabPoseResponse,
  md5sum() { return '396f27028ccc2718b2991cabdc1af144'; },
  datatype() { return 'vicon_bridge/viconGrabPose'; }
};
