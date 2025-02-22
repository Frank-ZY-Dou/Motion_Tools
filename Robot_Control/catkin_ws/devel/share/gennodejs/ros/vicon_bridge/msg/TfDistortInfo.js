// Auto-generated. Do not edit!

// (in-package vicon_bridge.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TfDistortInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tf_pub_rate = null;
      this.tf_ref_frame = null;
      this.tf_frame_in = null;
      this.tf_frame_out = null;
      this.delay = null;
      this.position_scale = null;
      this.noise_type = null;
      this.sigma_roll_pitch = null;
      this.sigma_yaw = null;
      this.sigma_xy = null;
      this.sigma_z = null;
      this.random_walk_k_xy = null;
      this.random_walk_k_z = null;
      this.random_walk_sigma_xy = null;
      this.random_walk_sigma_z = null;
      this.random_walk_tau_xy = null;
      this.random_walk_tau_z = null;
    }
    else {
      if (initObj.hasOwnProperty('tf_pub_rate')) {
        this.tf_pub_rate = initObj.tf_pub_rate
      }
      else {
        this.tf_pub_rate = 0.0;
      }
      if (initObj.hasOwnProperty('tf_ref_frame')) {
        this.tf_ref_frame = initObj.tf_ref_frame
      }
      else {
        this.tf_ref_frame = '';
      }
      if (initObj.hasOwnProperty('tf_frame_in')) {
        this.tf_frame_in = initObj.tf_frame_in
      }
      else {
        this.tf_frame_in = '';
      }
      if (initObj.hasOwnProperty('tf_frame_out')) {
        this.tf_frame_out = initObj.tf_frame_out
      }
      else {
        this.tf_frame_out = '';
      }
      if (initObj.hasOwnProperty('delay')) {
        this.delay = initObj.delay
      }
      else {
        this.delay = 0;
      }
      if (initObj.hasOwnProperty('position_scale')) {
        this.position_scale = initObj.position_scale
      }
      else {
        this.position_scale = 0.0;
      }
      if (initObj.hasOwnProperty('noise_type')) {
        this.noise_type = initObj.noise_type
      }
      else {
        this.noise_type = '';
      }
      if (initObj.hasOwnProperty('sigma_roll_pitch')) {
        this.sigma_roll_pitch = initObj.sigma_roll_pitch
      }
      else {
        this.sigma_roll_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('sigma_yaw')) {
        this.sigma_yaw = initObj.sigma_yaw
      }
      else {
        this.sigma_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('sigma_xy')) {
        this.sigma_xy = initObj.sigma_xy
      }
      else {
        this.sigma_xy = 0.0;
      }
      if (initObj.hasOwnProperty('sigma_z')) {
        this.sigma_z = initObj.sigma_z
      }
      else {
        this.sigma_z = 0.0;
      }
      if (initObj.hasOwnProperty('random_walk_k_xy')) {
        this.random_walk_k_xy = initObj.random_walk_k_xy
      }
      else {
        this.random_walk_k_xy = 0.0;
      }
      if (initObj.hasOwnProperty('random_walk_k_z')) {
        this.random_walk_k_z = initObj.random_walk_k_z
      }
      else {
        this.random_walk_k_z = 0.0;
      }
      if (initObj.hasOwnProperty('random_walk_sigma_xy')) {
        this.random_walk_sigma_xy = initObj.random_walk_sigma_xy
      }
      else {
        this.random_walk_sigma_xy = 0.0;
      }
      if (initObj.hasOwnProperty('random_walk_sigma_z')) {
        this.random_walk_sigma_z = initObj.random_walk_sigma_z
      }
      else {
        this.random_walk_sigma_z = 0.0;
      }
      if (initObj.hasOwnProperty('random_walk_tau_xy')) {
        this.random_walk_tau_xy = initObj.random_walk_tau_xy
      }
      else {
        this.random_walk_tau_xy = 0.0;
      }
      if (initObj.hasOwnProperty('random_walk_tau_z')) {
        this.random_walk_tau_z = initObj.random_walk_tau_z
      }
      else {
        this.random_walk_tau_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TfDistortInfo
    // Serialize message field [tf_pub_rate]
    bufferOffset = _serializer.float64(obj.tf_pub_rate, buffer, bufferOffset);
    // Serialize message field [tf_ref_frame]
    bufferOffset = _serializer.string(obj.tf_ref_frame, buffer, bufferOffset);
    // Serialize message field [tf_frame_in]
    bufferOffset = _serializer.string(obj.tf_frame_in, buffer, bufferOffset);
    // Serialize message field [tf_frame_out]
    bufferOffset = _serializer.string(obj.tf_frame_out, buffer, bufferOffset);
    // Serialize message field [delay]
    bufferOffset = _serializer.int32(obj.delay, buffer, bufferOffset);
    // Serialize message field [position_scale]
    bufferOffset = _serializer.float64(obj.position_scale, buffer, bufferOffset);
    // Serialize message field [noise_type]
    bufferOffset = _serializer.string(obj.noise_type, buffer, bufferOffset);
    // Serialize message field [sigma_roll_pitch]
    bufferOffset = _serializer.float64(obj.sigma_roll_pitch, buffer, bufferOffset);
    // Serialize message field [sigma_yaw]
    bufferOffset = _serializer.float64(obj.sigma_yaw, buffer, bufferOffset);
    // Serialize message field [sigma_xy]
    bufferOffset = _serializer.float64(obj.sigma_xy, buffer, bufferOffset);
    // Serialize message field [sigma_z]
    bufferOffset = _serializer.float64(obj.sigma_z, buffer, bufferOffset);
    // Serialize message field [random_walk_k_xy]
    bufferOffset = _serializer.float64(obj.random_walk_k_xy, buffer, bufferOffset);
    // Serialize message field [random_walk_k_z]
    bufferOffset = _serializer.float64(obj.random_walk_k_z, buffer, bufferOffset);
    // Serialize message field [random_walk_sigma_xy]
    bufferOffset = _serializer.float64(obj.random_walk_sigma_xy, buffer, bufferOffset);
    // Serialize message field [random_walk_sigma_z]
    bufferOffset = _serializer.float64(obj.random_walk_sigma_z, buffer, bufferOffset);
    // Serialize message field [random_walk_tau_xy]
    bufferOffset = _serializer.float64(obj.random_walk_tau_xy, buffer, bufferOffset);
    // Serialize message field [random_walk_tau_z]
    bufferOffset = _serializer.float64(obj.random_walk_tau_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TfDistortInfo
    let len;
    let data = new TfDistortInfo(null);
    // Deserialize message field [tf_pub_rate]
    data.tf_pub_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tf_ref_frame]
    data.tf_ref_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tf_frame_in]
    data.tf_frame_in = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tf_frame_out]
    data.tf_frame_out = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [delay]
    data.delay = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position_scale]
    data.position_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [noise_type]
    data.noise_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sigma_roll_pitch]
    data.sigma_roll_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sigma_yaw]
    data.sigma_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sigma_xy]
    data.sigma_xy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sigma_z]
    data.sigma_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [random_walk_k_xy]
    data.random_walk_k_xy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [random_walk_k_z]
    data.random_walk_k_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [random_walk_sigma_xy]
    data.random_walk_sigma_xy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [random_walk_sigma_z]
    data.random_walk_sigma_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [random_walk_tau_xy]
    data.random_walk_tau_xy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [random_walk_tau_z]
    data.random_walk_tau_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.tf_ref_frame);
    length += _getByteLength(object.tf_frame_in);
    length += _getByteLength(object.tf_frame_out);
    length += _getByteLength(object.noise_type);
    return length + 116;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vicon_bridge/TfDistortInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7025291415a53264a70b836a949be8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 tf_pub_rate
    string tf_ref_frame
    string tf_frame_in
    string tf_frame_out
    int32 delay
    float64 position_scale
    string noise_type
    float64 sigma_roll_pitch
    float64 sigma_yaw
    float64 sigma_xy
    float64 sigma_z
    float64 random_walk_k_xy
    float64 random_walk_k_z
    float64 random_walk_sigma_xy
    float64 random_walk_sigma_z
    float64 random_walk_tau_xy
    float64 random_walk_tau_z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TfDistortInfo(null);
    if (msg.tf_pub_rate !== undefined) {
      resolved.tf_pub_rate = msg.tf_pub_rate;
    }
    else {
      resolved.tf_pub_rate = 0.0
    }

    if (msg.tf_ref_frame !== undefined) {
      resolved.tf_ref_frame = msg.tf_ref_frame;
    }
    else {
      resolved.tf_ref_frame = ''
    }

    if (msg.tf_frame_in !== undefined) {
      resolved.tf_frame_in = msg.tf_frame_in;
    }
    else {
      resolved.tf_frame_in = ''
    }

    if (msg.tf_frame_out !== undefined) {
      resolved.tf_frame_out = msg.tf_frame_out;
    }
    else {
      resolved.tf_frame_out = ''
    }

    if (msg.delay !== undefined) {
      resolved.delay = msg.delay;
    }
    else {
      resolved.delay = 0
    }

    if (msg.position_scale !== undefined) {
      resolved.position_scale = msg.position_scale;
    }
    else {
      resolved.position_scale = 0.0
    }

    if (msg.noise_type !== undefined) {
      resolved.noise_type = msg.noise_type;
    }
    else {
      resolved.noise_type = ''
    }

    if (msg.sigma_roll_pitch !== undefined) {
      resolved.sigma_roll_pitch = msg.sigma_roll_pitch;
    }
    else {
      resolved.sigma_roll_pitch = 0.0
    }

    if (msg.sigma_yaw !== undefined) {
      resolved.sigma_yaw = msg.sigma_yaw;
    }
    else {
      resolved.sigma_yaw = 0.0
    }

    if (msg.sigma_xy !== undefined) {
      resolved.sigma_xy = msg.sigma_xy;
    }
    else {
      resolved.sigma_xy = 0.0
    }

    if (msg.sigma_z !== undefined) {
      resolved.sigma_z = msg.sigma_z;
    }
    else {
      resolved.sigma_z = 0.0
    }

    if (msg.random_walk_k_xy !== undefined) {
      resolved.random_walk_k_xy = msg.random_walk_k_xy;
    }
    else {
      resolved.random_walk_k_xy = 0.0
    }

    if (msg.random_walk_k_z !== undefined) {
      resolved.random_walk_k_z = msg.random_walk_k_z;
    }
    else {
      resolved.random_walk_k_z = 0.0
    }

    if (msg.random_walk_sigma_xy !== undefined) {
      resolved.random_walk_sigma_xy = msg.random_walk_sigma_xy;
    }
    else {
      resolved.random_walk_sigma_xy = 0.0
    }

    if (msg.random_walk_sigma_z !== undefined) {
      resolved.random_walk_sigma_z = msg.random_walk_sigma_z;
    }
    else {
      resolved.random_walk_sigma_z = 0.0
    }

    if (msg.random_walk_tau_xy !== undefined) {
      resolved.random_walk_tau_xy = msg.random_walk_tau_xy;
    }
    else {
      resolved.random_walk_tau_xy = 0.0
    }

    if (msg.random_walk_tau_z !== undefined) {
      resolved.random_walk_tau_z = msg.random_walk_tau_z;
    }
    else {
      resolved.random_walk_tau_z = 0.0
    }

    return resolved;
    }
};

module.exports = TfDistortInfo;
