import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("About")
            }
            Label {
                anchors.horizontalCenter: column.horizontalCenter
                text: "Sail Animal Farm"
                font.pixelSize: Theme.fontSizeExtraLarge
            }
            Label {
                anchors.horizontalCenter: column.horizontalCenter
                text: "Version 1.0"
                font.pixelSize: Theme.fontSizeExtraSmall
            }
            Label {
                anchors.horizontalCenter: column.horizontalCenter
                text: "2016"
            }
            Label {
                anchors.horizontalCenter: column.horizontalCenter
                text: "© Author of this port: kuba77"
            }
            TextArea {
                color: "white"
                anchors.horizontalCenter: column.horizontalCenter
                text: "Port of Animal Farm app for Ubuntu Touch (author Robert Ancell)"
                anchors {
                     left: parent.left
                     right: parent.right
                     leftMargin: 15
                     rightMargin: 15
                 }
            }

        }
    }
}
