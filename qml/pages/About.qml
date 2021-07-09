import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: aboutPage

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: aboutColumn.height

        Column {
            id: aboutColumn
            width: aboutPage.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("About")
            }
            Label {
                anchors.horizontalCenter: aboutColumn.horizontalCenter
                text: "Sail Animal Farm"
                font.pixelSize: Theme.fontSizeExtraLarge
            }
            Label {
                anchors.horizontalCenter: aboutColumn.horizontalCenter
                text: "Version 1.0"
                font.pixelSize: Theme.fontSizeExtraSmall
            }
            Label {
                anchors.horizontalCenter: aboutColumn.horizontalCenter
                text: "2016"
            }
            Label {
                anchors.horizontalCenter: aboutColumn.horizontalCenter
                text: "© Author of this port: kuba77"
            }
            TextArea {
                color: "white"
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
