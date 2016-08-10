import QtQuick 2.4
import QtQuick.Controls 1.2
import QtQuick.Window 2.2

ApplicationWindow {
    title: qsTr("hello world")
    width:640
    height: 400

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text:qsTr("&Open")
                onTriggered: console.log("Open action triggered");

            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: qt.Quit();
            }
        }
    }

    Button {
        text: qsTr("Hello World")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
}
