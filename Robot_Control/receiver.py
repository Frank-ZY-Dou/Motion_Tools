#!/usr/bin/env python3
import rospy
from vicon_bridge.msg import Markers

def marker_callback(msg):
    rospy.loginfo(f"Frame Number: {msg.frame_number}")

    for marker in msg.markers:
        marker_name = marker.marker_name
        subject_name = marker.subject_name
        segment_name = marker.segment_name
        x, y, z = marker.translation.x, marker.translation.y, marker.translation.z
        occluded = marker.occluded

        print(f"Marker: {marker_name} | Subject: {subject_name} | Segment: {segment_name}")
        print(f"  Position: x={x:.3f}, y={y:.3f}, z={z:.3f}")
        print(f"  Occluded: {occluded}")
        print("-" * 40)

def listener():
    rospy.init_node("vicon_marker_listener", anonymous=True)
    rospy.Subscriber("/vicon/markers", Markers, marker_callback)
    rospy.spin()

if __name__ == "__main__":
    listener()
