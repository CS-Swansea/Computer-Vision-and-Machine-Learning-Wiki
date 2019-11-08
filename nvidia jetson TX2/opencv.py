from time import time
from glob import glob
import os, json, warnings, sys, pickle, subprocess
warnings.filterwarnings('ignore')

import cv2
import numpy      as np

print(cv2.getBuildInformation())

def open_onboard_camera(width, height, framerate):
	pipeline = f"nvarguscamerasrc ! video/x-raw(memory:NVMM), width=(int){width:d}, height=(int){height:d},format=(string)NV12, framerate=(fraction){framerate:d}/1 ! " \
	           f"nvvidconv flip-method=2 ! video/x-raw, format=(string)BGRx ! videoconvert ! video/x-raw, format=(string)BGR ! appsink"
	#print(pipeline)
	return cv2.VideoCapture(pipeline)

#cap = open_onboard_camera(1280, 720, 120)
cap = open_onboard_camera(2592, 1944, 29)

while(True):
	# Capture frame-by-frame
	ret, frame = cap.read()
	cv2.imwrite(f'opencv-test.png', frame)
	
	#gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
	#cv2.imwrite(f'output-{TF_RANK}.png', gray)
	break

# When everything done, release the capture
cap.release()
