import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    color: "#F5F5FB"

    Text {
        x: 50
        y: 50
        text: qsTr("Arouna Mounchili")
        color: "#4785EF"
        font.bold: true
        font.pixelSize: 16
    }

    ColumnLayout {
        x: 150
        y: 200
        //spacing: 5

        Text {
            text: qsTr("Login to the Community-Network")
            color: "#677791"
            font.bold: true
            font.pixelSize: 14
        }
        RowLayout {
            width: 150
            height: 300
            //spacing: 1
            Text {
                text: qsTr("Don't have an account?")
                color: "#677791"
                font.pixelSize: 12
            }
            Text {
                text: qsTr("Create an account")
                color: "#FF7B8C"
                font.pixelSize: 12
            }
        }

        // TextInput - Enter email
        TextField {
            Layout.fillWidth: true
            leftPadding: 10
            id: textFieldEmail
            echoMode: TextInput.Normal
            placeholderText: qsTr("Enter your email")
        }
        TextField {
            Layout.fillWidth: true
            leftPadding: 10
            id: textFieldPassword
            echoMode: TextInput.PasswordEchoOnEdit
            placeholderText: qsTr("Enter your password")
        }


        Button {
            Layout.fillWidth: true
            text: "<font color=\"white\"><b>Login<b><\font>"
            //text: "Login"
            palette.button: "white"
            background: Rectangle {
                color: "#677791"
            }
        }
        Text {
            text: qsTr("Forgot your Password?")
            color: "#677791"
            font.pixelSize: 12
        }
    }

    RowLayout {
        x: 150
        y: 500

        Text {
            text: qsTr("Privacy Policy")
            color: "#677791"
            font.pixelSize: 12
        }
        Text {
            text: qsTr("Terms & Conditions")
            color: "#677791"
            font.pixelSize: 12
        }
    }
}
