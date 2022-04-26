import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.15

Item {

    AnimatedImage{
        id:logo
        source: "../32d993ba260c6bcbb7cd5fd77347fad1.gif"
        height: 500
        width: 640



        Image{

            id:mercedes
            source: "../Mercedes Benz AMG G 63.I09.watermarked.2k.png"
            height: 400
            width: 400
            anchors.horizontalCenter: parent.horizontalCenter
            y:130
        }



    }

}
