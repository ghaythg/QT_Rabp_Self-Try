import QtQuick
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.15


// problem with the list element and the load of pages when we ckliked into the mouse area


Item {


    Rectangle{
        id:bkg
        height: window.height
        width: window.width
        color: "black"


        Button {
             id:home_button
             width:160 //parent.width/3
             text: "Previous"
              anchors.horizontalCenter:ghayth.horizontalCenter
              y:450
              background: Rectangle {
                          border.color: "#42caa7"
                          color: "black"
                          radius: 5
                      }

              onClicked:mystackview.pop("qrc:/page2.qml")
         }

        ListModel{
            id : listmodel
            ListElement{Name:"Setting page";portrait:"tools.gif"}
            ListElement{Name:"2";portrait:"music.gif"}
            ListElement{Name:"4";portrait:"wifi.gif"}
            ListElement{Name:"5";portrait:"usb.gif"}
            ListElement{Name:"6";portrait:"bluetooth.gif"}
            ListElement{Name:"7";portrait:"location.gif"}

        }

        GridView{
                id:gridview
                anchors {
                    top: bkg.top
                    bottom: bkg.bottom
                    left: bkg.left
                    right: bkg.right
                    leftMargin: 80
                    rightMargin: 20
                    topMargin: 100
                }

                model: listmodel
                cellHeight: height/2
                cellWidth:width/3

                delegate: Column {
                    AnimatedImage {
                        id:im
                        width: 100
                        height: 100
                        source: portrait; anchors.horizontalCenter: parent.horizontalCenter
                        smooth: True
                        MouseArea {
                                        anchors.fill: parent
                                        onClicked: mystackview.push(Qt.resolvedUrl("qrc:/setting_page.qml"))
                                    }
                    }



                    Text {
                        text: name; anchors.horizontalCenter: parent.horizontalCenter
                    }
                }


            }




    }

   Rectangle {
        id:ghayth
        height: 50
        width: 640
        color:"black"
        border.width:2
        border.color: "#42caa7"

        Text {

            text:Qt.formatDateTime(new Date ,"h:m:s ap")
            color: "white"
            x:560
            y:10
            font.family: "Serifs"
            font.pointSize: 9
        }


        Text {

            text:Qt.formatDate(new Date , "ddd MMMM d yy")
            color: "white"
            x:10
            y:10
            font.family: "Serifs"
            font.pointSize: 9
        }
    }










}
