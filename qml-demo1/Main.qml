import QtQuick 2.4
import Ubuntu.Components 1.3

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "qml-demo1.netroby"

    width: units.gu(100)
    height: units.gu(75)

    Page {
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("qml-demo1")
        }

        Label {
            id: label
            objectName: "label"
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: pageHeader.bottom
                topMargin: units.gu(2)
            }

            text: i18n.tr("Hello..")
        }

        Button {
            objectName: "button"
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: label.bottom
            }
            width: parent.width
            text: i18n.tr("Tap me!")
            anchors.horizontalCenterOffset: 0
            anchors.topMargin: 124
            onClicked: {
                label.text = i18n.tr("..world!")
            }
        }

        TextInput {
            id: textInput1
            x: 0
            y: 66
            width: 800
            height: 20
            text: qsTr("Type your name")
            font.pixelSize: 12
        }
    }
}

