import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.1

Item {
    id: root

    anchors.fill: parent

    Pane {
        height: 50
        width: parent.width
        Material.elevation: 5

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Multiply two numbers"
            font.pixelSize: 20
        }
    }

    Column {
        width: parent.width/2
        height: parent.height/2
        anchors.centerIn: parent

        Row {
            height: 100
            width: parent.width
            anchors.margins: 10
            spacing: 10

            TextField {
                id: number1

                placeholderText: "Number 1"
                width: parent.width/2 - parent.spacing/2
                anchors.verticalCenter: parent.verticalCenter
                selectByMouse: true
            }
            TextField {
                id: number2

                placeholderText: "Number 2"
                width: parent.width/2 - parent.spacing/2
                anchors.verticalCenter: parent.verticalCenter
                selectByMouse: true
            }
        }
        Button {
            text: "Multiply"
            onClicked: {
                app.multiplyNumbers(number1.text, number2.text)
            }
        }
        Text {
            id: result

            height: 100
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 20
            text: "<b>Result:</b> " + app.result
        }
    }
}
