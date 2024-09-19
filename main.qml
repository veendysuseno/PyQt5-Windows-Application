import QtLocation 5.11
import QtPositioning 5.0

import QtQuick 2.5//2.15
import QtQuick.Window 2.2 //2.15
import QtQuick.Controls 1.4//2.15
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Extras.Private 1.0

import QtQuick 2.12
import QtQuick.Window 2.13
//import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Extras.Private 1.0

//import QtQuick 2.0
import QtCharts 2.1

import QtQuick 2.0
import PyCVQML 1.0
//import Filters 1.0

Window {
   id : root
	width: 1380
	//maximumWidth : 800
	//minimumWidth : width
    height: 800
	//maximumHeight : 800
	//minimumHeight : height
	title:"SSL DPTE - MKB UPI"
	color : "#223459"
    visible: true
    //flags:  Qt.Dialog //Qt.WindowMaximized
	
		
	
	
	
	Rectangle{
	x : 300
	y : 10
	width : 950
	height : 130
	color : "transparent"
	border.width : 2
	border.color : "white"
	
	
	
	Image{
		  width :100
		  height : 100
          //anchors.horizontalCenter: parent.horizontalCenter
          x: 5
		  y:20         
          source:"upi.png"
		  
	}
	
	Text {
					x : 120
					y : 40
					
					text: "SMART STREET LIGHTING RESEARCH"
					font.family: "Helvetica"
					font.pixelSize: 35
					color: "#09FFD1"
				}
				
	Text {
					//anchors.horizontalCenter: parent.horizontalCenter
					x: 120
					y : 90
					
					text: "PROF. ADE GAFFAR - DR. DADANG LUKMAN - DIKY ZAKARIA - FANDI AHMAD - MUHAMMAD HUSNI - QINTAR ALIFAH"
					font.family: "Helvetica"
					font.pixelSize: 15
					color: "white"
				}
	
	}
	
	
	
	Rectangle{
	x: 20
	y : 20
	width : 260
	height : 650
	color : "transparent"
	border.width : 3
	border.color : "white"
	
	Text {
					anchors.horizontalCenter: parent.horizontalCenter
					y : 10
					
					text: "LUMINATION PROPERTIES"
					font.family: "Helvetica"
					font.pixelSize: 13
					font.bold : true
					color: "#09FFD1"
				}
				
	
		Text {
					x:10
					y : 50
					
					text: "DETECTED PEDESTRIANS"
					font.family: "Helvetica"
					font.pixelSize: 13
					color: "white"
				}
				
		Image{
			
			x:10
			y:70
			width : 80
			height : 100
			source : "pedestrians.png"
			
		}
		
		Text {
					id : pedestrian_value
					x:150
					y : 100
					
					text: ": 1"
					font.family: "Helvetica"
					font.pixelSize: 33
					color: "white"
				}

		Text {
					x:10
					y : 180
					
					text: "DETECTED MOTORCYCLE"
					font.family: "Helvetica"
					font.pixelSize: 13
					color: "white"
				}


		
		Text {
					id : motor_value
					x:150
					y : 240
					
					text: "0"
					font.family: "Helvetica"
					font.pixelSize: 33
					color: "white"
				}
		
		Image{
			x:10
			y:230
			width : 100
			height : 90
			source : "motor.png"
			
		}
		
		
		Text {
					x:10
					y : 350
					
					text: "DETECTED CARS"
					font.family: "Helvetica"
					font.pixelSize: 13
					color: "white"
				}

		Image{
			x:10
			y:380
			width : 80
			height : 70
			source : "car.png"
			
		}
		
		
		Text {
					id : car_value
					x:150
					y : 380
					
					text: ": 0"
					font.family: "Helvetica"
					font.pixelSize: 33
					color: "white"
				}


	
	Rectangle {
		id : lum1
		x: 10
		y: 500
		width : parent.width * 0.75
		height : 30
		color : "transparent"
		border.width : 3
		border.color : "white"
		
		Text {
					x : 10
					y : -30
					
					text: "LAMP POWER"
					font.family: "Helvetica"
					font.pixelSize: 12
					color: "white"
				}
		
		
		Rectangle {
		id : lumination1_gauge
		width : parent.width * 0.7
		height : 30
		color : "white"
		
		
		Text {
		id : lum1_text
		x : lum1.width + 5
		y : 5
		text : 0 + "%"
		font.family: "Helvetica"
		font.pixelSize: 12
		color: "white"
			
		}
		}
		
	}
	
	Text {
					x:20
					y : 540
					
					text: "DATE AND TIME"
					font.family: "Helvetica"
					font.pixelSize: 13
					color: "white"
					visible : true
				}
				
	Text {
					id : time_now
					x:20
					y : 570
					
					text: "12-7-1992 00:00:00"
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
					visible : true
				}
		
		
		
	Text {
					id : status
					anchors.horizontalCenter: parent.horizontalCenter
					y : 600
					
					text: "ACTIVE"
					font.family: "Helvetica"
					font.pixelSize: 30
					color: "white"
					visible : true
				}
	
	
	
	}
	
	
	
	
	Rectangle{
	//anchors.horizontalCenter: parent.horizontalCenter
	x: 290
	y: 160
	width : 480
	height : 400
	color : "transparent"
	border.width : 5
	border.color : "white"
	
	Rectangle{
	x: 5
	y: 5
	width: parent.width - 10
    height: parent.height - 10
	
	
    CVItem  {
        id: imageWriter
        anchors.fill: parent
        image: capture.image
    }
	
	}
	
	

    CVCapture{
        id: capture
        index: 0
        filters: []//[max_rgb_filter, gray_filter]
        //Component.onCompleted: capture.start()
    }
	
	
	}
	
	
	Rectangle{
	x: 780
	y : 160
	width : 480
	height : 400
	color : "transparent"
	border.width : 6
	border.color : "white"
	
	/*
	Text{
		id : img_source
		text : "image_update1.png"
	}
	*/
	
	
	Image{
		id : img_result
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		width : parent.width - 12
		height : parent.height - 12
		source : "image_update1.png"
		
		 
		
	}
	
	
	
	
	}
	
	
	Text {
					
					x : 300
					y : 580
					
					text: "LIVE STREAMING\nIP CAM : 192.168.1.64"
					font.family: "Helvetica"
					font.pixelSize: 13
					color: "white"
				}
	
	
	
	Button{
		id : button_cam
		x : 500
		y : 630
		checkable : true
		text : "camera button"
		visible : false
		onClicked:{
			if (button_cam.checked == true){
				capture.start()
			}
			
			if (button_cam.checked == false){
				capture.stop()
			}
			
		}
		
	}
	
	
	
	Button{
		id : decision_making
		x : 480
		y : 600
		checkable : true
		text : "decision"
		width : 100
		height : 50
		
		Rectangle {
        color: decision_making.checked ? "#09FFD1" : "white"
		anchors.fill: parent
		
		Text {
			y : -20
			anchors.horizontalCenter: parent.horizontalCenter
			font.pixelSize: 13
			text :"Power Calculation :"
			color: "white"
		}
		
		Text {
			anchors.centerIn: parent
			font.pixelSize: 13
			text :decision_making.checked ? "fuzzy" : "classic"
		}
		}
	}
	
	
	Button{
		
		x : 600
		y : 600
		checkable : false
		text : "Fuzzy Setting"
		width : 100
		height : 50
		
		onClicked:{
			fuzzy_setting.visible = true
		}
		
	}
	
	Text {
					x : 780
					y : 580
					
					text: "YOLOv4 PROCESSING RESULT"
					font.family: "Helvetica"
					font.pixelSize: 13
					color: "white"
				}
				
			
	Image{
		  width :100
		  height : 100
          //anchors.horizontalCenter: parent.horizontalCenter
          x: 1100
		  y:600         
          source:"firebase.png"
		  
		  Text {
			y : -20
			anchors.horizontalCenter: parent.horizontalCenter
			font.pixelSize: 13
			text :"Connected to :"
			color: "white"
		}
		  
	}
	
	
	Window {
        id: fuzzy_setting
        visible: false
		title:"SSL DPTE - MKB UPI"
		color : "#223459"
		width: 800
		height: 720
		maximumWidth : width
		minimumWidth : width
		maximumHeight : height
		minimumHeight : height
		
		
		ChartView {
        
        width : 300
		height : 250
        legend.visible: false
		backgroundColor:"transparent"
		
		Text {
					
					x : 280
					y : 40
					
					text: "L : "
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
				
		TextField {
					
					x : 305
					y : 40
					
					text: "0"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		TextField {
					
					x : 360
					y : 40
					
					text: "5"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
				
		
		Text {
					
					x : 280
					y : 100
					
					text: "M : "
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
				
		TextField {
					
					x : 305
					y : 100
					
					text: "3"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		TextField {
					
					x : 360
					y : 100
					
					text: "6"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		Text {
					
					x : 280
					y : 160
					
					text: "H : "
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
				
		TextField {
					
					x : 305
					y : 160
					
					text: "5"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		TextField {
					
					x : 360
					y : 160
					
					text: "10"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
		
		
		Text {
					
					x : 300
					y : 200
					
					text: "PEDESTRIAN"
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
		
		
		ValueAxis{
						id:yAxis1
						min: 0
						max : 10
						tickCount: 1
						//labelFormat: "%d"
						labelsColor: "white"
					}
		ValueAxis{
						id:xAxis1
						min: 0
						max : 10
						tickCount: 1
						//labelFormat: "%d"
						labelsColor: "white"
					}
					
					
        LineSeries {
			id : low1
            name: "low"
			color: "#09FFD1"
			width: 4
			axisY: yAxis1
			axisX: xAxis1
            XYPoint { x: 0; y: 10 }
            XYPoint { x: 5; y:0 }
			XYPoint { x: 10; y:0 }
			
        }
		
		LineSeries {
			id : medium1
            name: "medium"
			color: "#4AD953"
			width: 4
            XYPoint { x: 3; y: 0 }
            XYPoint { x: 5; y: 10 }
			XYPoint { x: 7; y: 0 }
        }
		
		LineSeries {
			id : high1
            name: "high"
			color: "#FEBC00"
			width: 4
            XYPoint { x: 5; y: 0 }
			XYPoint { x: 10; y: 10 }
            
        }
		
    }
	
	
		ChartView {
        y : 240
        width : 300
		height : 250
        legend.visible: false
		backgroundColor:"transparent"
		
		
		Text {
					
					x : 280
					y : 40
					
					text: "L : "
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
				
		TextField {
					
					x : 305
					y : 40
					
					text: "0"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		TextField {
					
					x : 360
					y : 40
					
					text: "5"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
				
		
		Text {
					
					x : 280
					y : 100
					
					text: "M : "
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
				
		TextField {
					
					x : 305
					y : 100
					
					text: "3"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		TextField {
					
					x : 360
					y : 100
					
					text: "6"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		Text {
					
					x : 280
					y : 160
					
					text: "H : "
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
				
		TextField {
					
					x : 305
					y : 160
					
					text: "5"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		TextField {
					
					x : 360
					y : 160
					
					text: "10"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
		
		
		Text {
					
					x : 300
					y : 200
					
					text: "MOTORCYCLE"
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
		
		ValueAxis{
						id:yAxis2
						min: 0
						max : 10
						tickCount: 1
						//labelFormat: "%d"
						labelsColor: "white"
					}
		ValueAxis{
						id:xAxis2
						min: 0
						max : 10
						tickCount: 1
						//labelFormat: "%d"
						labelsColor: "white"
					}
		
		
        LineSeries {
			id : low2
            name: "low"
			color: "#09FFD1"
			axisY: yAxis2
			axisX: xAxis2
			width: 4
            XYPoint { x: 0; y: 10 }
            XYPoint { x: 5; y:0 }
			XYPoint { x: 10; y:0 }
			
        }
		
		LineSeries {
			id : medium2
            name: "medium"
			color: "#4AD953"
			width: 4
            XYPoint { x: 3; y: 0 }
            XYPoint { x: 5; y: 10 }
			XYPoint { x: 7; y: 0 }
        }
		
		LineSeries {
			id : high2
            name: "high"
			color: "#FEBC00"
			width: 4
            XYPoint { x: 5; y: 0 }
			XYPoint { x: 10; y: 10 }
            
        }
		
    }
	
		
		ChartView {
        y : 470
        width : 300
		height : 250
        legend.visible: false
		backgroundColor:"transparent"
		
		
		Text {
					
					x : 280
					y : 40
					
					text: "L : "
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
				
		TextField {
					
					x : 305
					y : 40
					
					text: "0"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		TextField {
					
					x : 360
					y : 40
					
					text: "5"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
				
		
		Text {
					
					x : 280
					y : 100
					
					text: "M : "
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
				
		TextField {
					
					x : 305
					y : 100
					
					text: "3"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		TextField {
					
					x : 360
					y : 100
					
					text: "6"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		Text {
					
					x : 280
					y : 160
					
					text: "H : "
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
				
		TextField {
					
					x : 305
					y : 160
					
					text: "5"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		TextField {
					
					x : 360
					y : 160
					
					text: "10"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
		
		
		Text {
					
					x : 300
					y : 200
					
					text: "CAR"
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
		
		
		ValueAxis{
						id:yAxis3
						min: 0
						max : 10
						tickCount: 1
						//labelFormat: "%d"
						labelsColor: "white"
					}
		ValueAxis{
						id:xAxis3
						min: 0
						max : 10
						tickCount: 1
						//labelFormat: "%d"
						labelsColor: "white"
					}

        LineSeries {
			id : low3
            name: "low"
			color: "#09FFD1"
			
			width: 4
			axisY: yAxis3
			axisX: xAxis3
            XYPoint { x: 0; y: 10 }
            XYPoint { x: 5; y:0 }
			XYPoint { x: 10; y:0 }
			
        }
		
		LineSeries {
			id : medium3
            name: "medium"
			color: "#4AD953"
			width: 4
            XYPoint { x: 3; y: 0 }
            XYPoint { x: 5; y: 10 }
			XYPoint { x: 7; y: 0 }
        }
		
		LineSeries {
			id : high3
            name: "high"
			color: "#FEBC00"
			width: 4
            XYPoint { x: 5; y: 0 }
			XYPoint { x: 10; y: 10 }
            
        }
		
    }
	
	
	
	ChartView {
		x: 500
        y : 240
        width : 300
		height : 250
        legend.visible: false
		backgroundColor:"transparent"
		
		Text {
					
					x : 0
					y : 250
					
					text: "L : "
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
				
		TextField {
					
					x : 25
					y : 250
					
					text: "0"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		TextField {
					
					x : 70
					y : 250
					
					text: "5"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
				
		
		Text {
					
					x : 0
					y : 300
					
					text: "M : "
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
				
		TextField {
					
					x : 25
					y : 300
					
					text: "3"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		TextField {
					
					x : 70
					y : 300
					
					text: "6"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		Text {
					
					x : 0
					y : 350
					
					text: "H : "
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
				
		TextField {
					
					x : 25
					y : 350
					
					text: "5"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
				
		TextField {
					
					x : 70
					y : 350
					
					text: "10"
					font.family: "Helvetica"
					font.pixelSize: 18
					width : 40
					
				}
		
		
		Text {
					
					x : 0
					y : 400
					
					text: "LAMP"
					font.family: "Helvetica"
					font.pixelSize: 18
					color: "white"
				}
		
		ValueAxis{
						id:yAxis4
						min: 0
						max : 10
						tickCount: 1
						//labelFormat: "%d"
						labelsColor: "white"
					}
		ValueAxis{
						id:xAxis4
						min: 0
						max : 10
						tickCount: 1
						//labelFormat: "%d"
						labelsColor: "white"
					}
		
		
        LineSeries {
			id : low4
            name: "low"
			color: "#09FFD1"
			axisY: yAxis4
			axisX: xAxis4
			width: 4
            XYPoint { x: 0; y: 10 }
            XYPoint { x: 5; y:0 }
			XYPoint { x: 10; y:0 }
			
        }
		
		LineSeries {
			id : medium4
            name: "medium"
			color: "#4AD953"
			width: 4
            XYPoint { x: 3; y: 0 }
            XYPoint { x: 5; y: 10 }
			XYPoint { x: 7; y: 0 }
        }
		
		LineSeries {
			id : high4
            name: "high"
			color: "#FEBC00"
			width: 4
            XYPoint { x: 5; y: 0 }
			XYPoint { x: 10; y: 10 }
            
        }
		
    }
	
		
	
	
	
	
	
	
	}

	
	Timer{
		id:tmgauge
		interval: 10
		repeat: true
		running: true
		onTriggered: {
			//console.log(capture.lamp1())
			lumination1_gauge.width = lum1.width * backend.lamp1()
			lum1_text.text = (backend.lamp1()*100).toFixed(0) + "%"
			img_result.source = "image_update1.png?" + new Date().getTime();
			pedestrian_value.text = backend.pedestrian()
			car_value.text = backend.car()
			motor_value.text = backend.motor()
			time_now.text = backend.clock_now()
			status.text = backend.status()
			
		}
		
	}
	
	
	//Component.onCompleted: capture.start()
	
	Timer{
		id:scan_road
		interval: 1000
		repeat: true
		running: true
		onTriggered: {
			backend.refresh("yes")
			//backend.scan_road("yes please")
		}
		
	}
	
	
	
	/*
	Window {
	id : map_window
	width: 400
    height: 400
	
	title:"LOKASI LAMPU"
	color : "#FF96C5"
    visible: true

	
	Rectangle {
            id: map1
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            color: "#958c8c"
            //radius: 6
            //border.color: "#6c6c6c"
            //border.width: 7
			
			
			
			
			
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#958c8c"
                }

                GradientStop {
                    position: 1
                    color: "#808080"
                }



            }
	
	
	
	
	
	Rectangle {
                id: mapGroup
                x: 0
                y: 0
                width: parent.width 
                height: parent.height
				
                property int count : 0
                property real lati : -6.000507
                property real longi : 106.687493	
				
				Map{
                    id: map
                    x: 0
                    y: 0
                    width: parent.width
                    height: parent.height
                    color: "#f9f9f9"
                    anchors.rightMargin: 8
                    anchors.centerIn: parent;
                    anchors.fill: parent
                    anchors.verticalCenterOffset: 0
                    anchors.horizontalCenterOffset: 0
                    anchors.bottomMargin: 0
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    maximumZoomLevel: 120.4
                    copyrightsVisible: true
                    antialiasing: true
					zoomLevel : 120
                    maximumTilt: 89.3
                    plugin: mapPlugin
                    activeMapType: supportedMapTypes[2]

                    center: QtPositioning.coordinate(latitude_position_value.text, longitude_position_value.text)

                    gesture.enabled: true
                    gesture.acceptedGestures: MapGestureArea.PinchGesture | MapGestureArea.PanGesture
				
				
				
				Plugin {
					id: mapPlugin
                             name: "osm" // "mapboxgl", "esri", ...
                             // specify plugin parameters if necessary
                             
							 PluginParameter {
                                 name: "osm.mapping.providersrepository.enabled"
                                 value: "true"
                             }
                             PluginParameter {
                                 name: "osm.mapping.providersrepository.address"
                                 value: "http://maps-redirect.qt.io/osm/5.6/"
                             }		 
                         }
				
				
				
				


			
				
				
				Text {
                id: latitude_position_value
                x: 10
                y: 10
                width: 83
                height: 21
                color: "navy"
                text: qsTr("-6.855836102874995")
                font.pixelSize: 14
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                font.family: "Verdana"
                font.bold: true
				visible : false
            }

            Text {
                id: longitude_position_value
                x: 10
                y: 50
                width: 83
                height: 21
                color: "navy"
                text: qsTr("107.58374923599456")
                font.pixelSize: 14
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                font.family: "Verdana"
                font.bold: true
				visible : false
            }
				
			
			
			
			
			
			
			
				MouseArea {
                        hoverEnabled: true
                        property var coordinate: map.toCoordinate(Qt.point(mouseX, mouseY))
                        x: 0
                        y: 0
                        width: parent.width
                        height: parent.height
                        

                        Label
                        {
                            x: parent.mouseX - width
                            y: parent.mouseY - height - 5
                            text: (parent.coordinate.latitude).toFixed(6) + "," +(parent.coordinate.longitude).toFixed(6)
                            color:"navy"

                        }
						
						
						Text{
						id : lat_mouse
						x: parent.mouseX - width
                        y: parent.mouseY - height - 5
						text: (parent.coordinate.latitude).toFixed(6)
						color : "red"
						visible : false
						
						}
					
						Text{
						id : long_mouse
						x: parent.mouseX - width
                        y: parent.mouseY - height - 5
						text: (parent.coordinate.longitude).toFixed(6)
						color : "red"
						visible : false
						
						}
				
						
                        onPressAndHold: {
                            //var crd = map.toCoordinate(Qt.point(mouseX, mouseY))
							
							
							console.log("clicked")
                            if (md.count < 1){
                                
                            }
                            else if (md.count > 0){
                                
                            }

                            markerModel.append({ "latitude":lat_mouse.text, "longitude": long_mouse.text})
                            var text = md.count + 1;
                            md.append({"coords": coordinate, "title": text})
                            //line.addCoordinate(coordinate)

                            
                        }

                        onDoubleClicked: {
                            var coor = map.toCoordinate(Qt.point(mouseX, mouseY))
                            var text1 = md1.count + 1;
                            md1.append({"coords": coordinate, "title": text1})
                            //line1.addCoordinate(coordinate)
                        }
						
						
						
                    }

					
				
				MapQuickItem{
                    id : marker
                    sourceItem : Image{
                        id: imagenavigasi
                        width: 33
                        height: 37
                        //transformOrigin: Item.Center
                        source:"plantern.png"
						//source:"segitiga.png"
                        //rotation: 0
                        fillMode: Image.PreserveAspectFit
                        transform: [
                            Rotation {
                                id: markerdirect
                                origin.x: 15
                                origin.y: 14
                                angle: 0
                            }]
                    }
					
					
					
                    coordinate: QtPositioning.coordinate(latitude_position_value.text, longitude_position_value.text)
                    //coordinate: QtPositioning.coordinate(2.73706666666667, 125.36065)
                    anchorPoint.x : 15
                    anchorPoint.y : 14
                    //anchorPoint.x : parent
                    //anchorPoint.y : parent

                }
				
				
				
				MapItemView {
                    id: mivMarker
                    model: ListModel {
                        id: markerModel
                    }
                    delegate: Component {
                        MapQuickItem {
                            coordinate: QtPositioning.coordinate(latitude, longitude)
                            property real slideIn: 0
                        }
                    } 
                }
				
				}
				
				
				
               

		   }


	
	}
	
		
			
	
	
	
}


	*/
	
	
	
	
	Timer{
		id:buffer_timer
		interval: 1000
		repeat: true
		running: true
		onTriggered: {
			
			capture.signal("1")
			yolo_process.running = true
		}
		
	}
	
	Timer{
		id:yolo_process
		interval:1000
		repeat: true
		running: true
		onTriggered: {
			backend.yolo_run("yes please")
			yolo_process.running = false
			
			
		}
		
	}
	
	
}