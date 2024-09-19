######  PROGRAM MEMANGGIL WINDOWS PYQT5 ##########################

####### memanggil library PyQt5 ##################################
#----------------------------------------------------------------#
from PyQt5 import QtGui, QtCore, QtQuick, QtQml
from PyQt5.QtCore import * 
from PyQt5.QtGui import *

from PyQt5.QtQml import * 
from PyQt5.QtWidgets import *
from PyQt5.QtQuick import *  
import sys

import PyCVQML
import threading
import time

from datetime import datetime
import datetime as dt

import paho.mqtt.client as paho
broker="127.0.0.1"
#broker="mqtt.ardumeka.com"
port = 1883


from pathlib import Path
import os
yolo_run_dir = str('"') + str(Path.cwd()) + str("/img_yolo.py") + str('"')
print(yolo_run_dir)

#----------------------------------------------------------------#

process_time = 0
process_time_prev = 0

lamp_power = 0
lamp1 = 0.77
lamp2 = 0.77
lamp3 = 0.77
lamp4 = 0.77
lamp5 = 0.77
lamp6 = 0.77
lamp7 = 0.77
lamp8 = 0.77

car = 0
pedestrian = 0
motor = 0

clock_now = ""
clock_parse = ""

status = ""
########## mengisi class table dengan instruksi pyqt5#############
#----------------------------------------------------------------#
class table(QObject):    
    def __init__(self, parent = None):
        super().__init__(parent)
        self.app = QApplication(sys.argv)
        self.engine = QQmlApplicationEngine(self)
        self.engine.rootContext().setContextProperty("backend", self)    
        self.engine.load(QUrl("main.qml"))
        sys.exit(self.app.exec_())
    
    
    @pyqtSlot(str)
    def yolo_run(self, message):
        global yolo_run_dir
        os.system(str('python '+ str(yolo_run_dir)))
        
        
        
    @pyqtSlot(result=float)
    def lamp1(self):  return lamp_power/100
    
    @pyqtSlot(result=str)
    def clock_now(self):  return str(clock_now)
    
    @pyqtSlot(str)
    def refresh(self, message):
        global clock_now
        global clock_parse
        clock_now = str(datetime.now().strftime("%d-%m-%Y %H:%M:%S"))
        clock_parse = str(datetime.now().strftime("%H"))
        #print(clock_now)
    
    @pyqtSlot(str)
    def scan_road(self, message):
        global car
        global pedestrian
        global motor
        global lamp_power
        global status
        
        car_memory_file = open("car_memory.txt","r+")
        person_memory_file = open("person_memory.txt","r+")
        motor_memory_file = open("motor_memory.txt","r+")
        
        
        car = int(str(car_memory_file.read()))
        pedestrian = int(str(person_memory_file.read()))
        motor = int(str(motor_memory_file.read()))
        
        lamp_power = (car*20) + (pedestrian*10) + (motor * 15)
        if (lamp_power > 100):
            lamp_power = 100
        
        if (int(clock_parse) > 18 or int(clock_parse) < 6):
            client.publish("lamp1", str(int(float(lamp_power) * 255/100)))
            status = "ACTIVE"
        else:
            client.publish("lamp1", str(int(float(lamp_power) * 255/100)))
            #client.publish("lamp1", str(0))
            status = "ACTIVE"
        
    @pyqtSlot(result=int)
    def car(self):  return car
    
    @pyqtSlot(result=int)
    def pedestrian(self):  return pedestrian
    
    @pyqtSlot(result=int)
    def motor(self):  return motor
    
    @pyqtSlot(result=str)
    def status(self):  return status
    
            
        
#----------------------------------------------------------------#

def on_message(client, userdata, message):
    msg = str(message.payload.decode("utf-8"))
    t = str(message.topic)

    if(msg[0] == 'c'):
        val =  1
    else:
        val = (msg)


########## memanggil class table di mainloop######################
#----------------------------------------------------------------#    
if __name__ == "__main__":
    
    client= paho.Client("GUI")
    client.on_message=on_message
    client.connect(broker,port)#connect
    client.loop_start()
    client.subscribe("potensiometer")
    client.subscribe("sensor1")
    
    
    #t1 = threading.Thread(target=variable_transfer, args=(10,))
    #t1.start()
    
    PyCVQML.registerTypes()
    main = table()
    sys.exit(self.app.exec_())
#----------------------------------------------------------------#
