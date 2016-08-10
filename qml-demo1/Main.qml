import QtQuick 2.4


Rectangle {
    width: 200
    height: 100
    color: "red"

    Text {
        anchors.centerIn: parent
        text: "Hello, world!"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: parent.color = "blue"
    }
}
