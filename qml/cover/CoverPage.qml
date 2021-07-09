import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    id: cover

    Image {
        source: "../pages/elephant.png" //TODO: Resolve via url etc
        width: cover.width - 20
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: parent
    }
}
