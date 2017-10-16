import QtQuick 2.7
import QtQuick.Controls 2.2

Item {
    id: root

    anchors.fill: parent

    Text {
        anchors.centerIn: parent
        font.pointSize: 25
        text: "App Instance Id: " + appController.instanceId
    }
}
