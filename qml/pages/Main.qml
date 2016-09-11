/*
 * Copyright (C) 2013 Robert Ancell <robert.ancell@gmail.com>
 *               2016 kuba77 <kuba707@centrum.cz>
 *
 * This program is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version. See http://www.gnu.org/copyleft/gpl.html the full text of the
 * license.
 */

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    function size() {
        if (page.height <= page.width) {
            return page.height/2.3
        } else {
            return page.width/2.3
        }
    }

    function number() {
        if (page.height <= page.width) {
            return 3
        } else {
            return 2
        }
    }

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("About")
                onClicked: pageStack.push(Qt.resolvedUrl("About.qml"))
            }
        }
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge


            PageHeader {
                title: qsTr("Animal Farm")
            }
            Grid {
                id: grid
                columns: number(); spacing: 20
                anchors.horizontalCenter: column.horizontalCenter

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
        }
    }
}


