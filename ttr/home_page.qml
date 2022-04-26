import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.15
Item {

    Rectangle{
        id:bkg
        height: window.height
        width: window.width
        color: "black"
        Loader{
           id:animate_im
            source: "../animate_logo.qml"

            height: window.height
            width: window.width
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

        Text {

            text: qsTr("Welcome Ghayth !")
            color: "#42caa7"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            y:10
            font.family: "black chancery "
            font.pointSize: 11
        }
    }





    Button {
         id:home_button
         width:160 //parent.width/3
         text: "HOME"
          anchors.horizontalCenter:ghayth.horizontalCenter
          y:450
          background: Rectangle {
                      border.color: "#42caa7"
                      color: "black"
                      radius: 5
                  }

          onClicked:mystackview.push("qrc:/page2.qml")
     }




}



