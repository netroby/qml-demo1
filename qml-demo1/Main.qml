import QtQuick 2.4


Rectangle {
    width: 200
    height: 100
    color: "red"


    Text {
        id: tDisplay
        anchors.centerIn: parent
        text: "Hello, world!"
    }

    TextInput {
        id: tText
        x: 0
        y: 20
        width: 400
        height: 24
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {tDisplay.text = "tTextdsft"}
    }
}
