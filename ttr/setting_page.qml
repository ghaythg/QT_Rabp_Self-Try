import QtQuick 2.0
import QtQuick
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.15

Item {

    Rectangle{
        id:bkg
        height: window.height
        width: window.width
        color: "black"


        Rectangle{
                    //rectangle for the chair
                id:grnd
                height: bkg.height/3
                width: bkg.width
                color: "black"
                border.width:1
                border.color: "#42caa7"

        }



        Image {
            y:45
            x:150
            height: 50
            width: 50
            id: upa
            source: "../up.png"


        }
        Image {
            y:48
            x:450
            height: 50
            width: 50
            id: dwna
            source: "../dwn.png"

        }
          }



                Image {
                    y:50
                    x:400
                    height: 50
                    width: 50
                    id: plus
                    source: "../plus.png"
                }
                Image {
                    y:30
                    x:280
                    height: 100
                    width: 100
                    id: seat
                    source: "../seat.png"
                }
          Image {
                    y:50
                    x:200
                    height: 50
                    width: 50
                    id: minus
                    source: "../minus.png"
                }





          Rectangle{
                      //rectangle for the heat
                  id:grnd2
                  y:160

                  height: bkg.height/3
                  width: bkg.width
                  color: "black"
                  border.width:1
                  border.color: "#42caa7"

                  Image {
                            y:35
                            x:30
                            height: 90
                            width: 90
                            id: cha1
                            source: "../windscreen-air.png"
                        }
                  Image {
                            y:35
                            x:530
                            height: 90
                            width: 90
                            id: cha2
                            source: "../windscreen-air.png"
                        }
                  ColumnLayout{
                          y:50
                          x:165
                      width: bkg.width/2
                      ProgressBar {
                          id:first1
                          Layout.fillWidth: true
                          from: firsts1.from
                          to:firsts1.to
                          value: firsts1.value
                      }
                      Slider{

                         Layout.fillWidth: true
                          id:firsts1
                          from: 0
                          to : 100
                          stepSize: 5
                          value: 50

                      }

                      Text{
                          color: "#42caa7"

                          anchors.topMargin: 10
                         Layout.fillWidth: true
                          text: firsts1.value
                          wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                          font.pointSize: 10
                          horizontalAlignment: Text.AlignHCenter
                         verticalAlignment:  Text.AlignVCenter


                      }

                  }
          }



          Rectangle{
                      //rectangle for the ventilo
                  id:grnd3
                  y:310

                  height: bkg.height/3
                  width: bkg.width
                  color: "black"
                  border.width:1
                  border.color: "#42caa7"
                  Image {
                            y:10
                            x:230
                            height: 60
                            width: 60
                            id: vnt1
                            source: "../cooler.png"
                        }
                  Image {
                            y:10
                            x:300
                            height: 60
                            width: 60
                            id: vnt2
                            source: "../cooler.png"
                        }
                  Image {
                            y:10
                            x:385
                            height: 60
                            width: 60
                            id: vnt3
                            source: "../cooler.png"
                        }
                  ColumnLayout{
                          y:80
                          x:165
                      width: bkg.width/2
                      ProgressBar {
                          id:first2
                          Layout.fillWidth: true
                          from: firsts2.from
                          to:firsts2.to
                          value: firsts2.value
                      }
                      Slider{

                         Layout.fillWidth: true
                          id:firsts2
                          from: 0
                          to : 100
                          stepSize: 5
                          value: 50
                      }

                      Text{
                          color: "#42caa7"

                          anchors.topMargin: 10
                         Layout.fillWidth: true
                          text: firsts2.value
                          wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                          font.pointSize: 10
                          horizontalAlignment: Text.AlignHCenter
                         verticalAlignment:  Text.AlignVCenter


                      }

                  }



          }
          Button {
               id:home_button
               width:160 //parent.width/3
               text: "Previous"
                //anchors.horizontalCenter:parent
                y:450


                background: Rectangle {
                            border.color: "#42caa7"
                            color: "black"
                            radius: 5
                        }

                onClicked:mystackview.pop("qrc:/page2.qml")
           }



}

















