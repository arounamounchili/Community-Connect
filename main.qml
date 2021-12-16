import QtQuick
import QtQuick.Window

Window {
    width: 1000
    height: 550
    visible: true
    title: qsTr("Community Network")

    LeftWelcomeScreen {
        width: 600 - 20
        height: 510
        x: 20
        y: 20
    }
    RightWelcomeScreen {
        width: 450 - 20
        height: 510
        x: 550
        y: 20
    }


}
