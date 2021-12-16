import QtQuick
import QtQuick.Layouts

Rectangle {
    color: "#4785EF"

    ColumnLayout {
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        Text {
            text: qsTr("The first connected \ncommunity plattform")
            color: "white"
            font.bold: true
            font.pixelSize: 30
        }
        Text {
            text: qsTr("The platform aims to connect all Cameroonian\n associations in Germany and facilitate\n information sharing between them")
            color: "white"
            font.pixelSize: 14
        }
    }

}
