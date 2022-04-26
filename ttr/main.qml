import QtQuick
import QtQuick.VirtualKeyboard
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("welcomme to ur Car")

    Loader{
        id:page1
         source: "../stackview.qml"

   }




}

