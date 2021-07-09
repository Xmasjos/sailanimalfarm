/*
 * Copyright (C) 2013 Robert Ancell <robert.ancell@gmail.com>
 *               2016 kuba77 <kuba707@centrum.cz>
 *               2021 Xmasjos
 *
 * This program is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version. See http://www.gnu.org/copyleft/gpl.html the full text of the
 * license.
 */

import QtQuick 2.0
import QtMultimedia 5.0

Rectangle {
    id: animalBox
    antialiasing: true
    radius: 10
    property alias color: animalBox.color
    property alias imageSource: animalImage.source
    property alias soundSource: animalSound.source

    Image {
        id: animalImage
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width * 0.8
        height: parent.height * 0.8
        fillMode: Image.PreserveAspectFit
    }

    Audio {
        id: animalSound
    }

    SequentialAnimation {
        id: animation
        RotationAnimation {
            target: animalBox
            properties: "rotation"
            duration: 100
            to: 10
            easing.type: Easing.OutQuad
        }
        RotationAnimation {
            target: animalBox
            properties: "rotation"
            duration: 200
            to: -10
            easing.type: Easing.OutQuad
        }
        RotationAnimation {
            target: animalBox
            properties: "rotation"
            duration: 100
            to: 0
            easing.type: Easing.OutQuad
        }
    }

    MouseArea {
        anchors.fill: parent
        onPressed: { animation.start(); animalSound.play() }
    }
}
