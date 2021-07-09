import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: mainPage

    //TODO: Do via theme vars etc
    function size() {
        return mainPage.height <= mainPage.width ? mainPage.height/2.3 : mainPage.width/2.3;
    }

    function number() {
        return mainPage.height <= mainPage.width ? 3 : 2;
    }
    //END TODO

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("About")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("About.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: mainColumn.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: mainColumn

            width: mainPage.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("Animal Farm")
            }

            Grid {
                id: mainGrid
                columns: number(); spacing: 20
                anchors.horizontalCenter: mainColumn.horizontalCenter

                AnimalButton {
                    width: size()
                    height: size()
                    radius: 10
                    color: "#fce94f"
                    imageSource: "cat.png"
                    soundSource: "cat.ogg"
                }
                AnimalButton {
                    width: size()
                    height: size()
                    radius: 10
                    color: "#8ae234"
                    imageSource: "dog.png"
                    soundSource: "dog.ogg"
                }
                AnimalButton {
                    width: size()
                    height: size()
                    radius: 10
                    color: "#729fcf"
                    imageSource: "sheep.png"
                    soundSource: "sheep.ogg"
                }
                AnimalButton {
                    width: size()
                    height: size()
                    radius: 10
                    color: "#e9b96e"
                    imageSource: "goat.png"
                    soundSource: "goat.ogg"
                }
                AnimalButton {
                    width: size()
                    height: size()
                    radius: 10
                    color: "#fcaf3e"
                    imageSource: "elephant.png"
                    soundSource: "elephant.ogg"
                }
                AnimalButton {
                    width: size()
                    height: size()
                    radius: 10
                    color: "#ad7fa8"
                    imageSource: "cow.png"
                    soundSource: "cow.ogg"
                }
            }

//            Label {
//                x: Theme.horizontalPageMargin
//                text: qsTr("Hello Sailors")
//                color: Theme.secondaryHighlightColor
//                font.pixelSize: Theme.fontSizeExtraLarge
//            }
        }
    }
}
