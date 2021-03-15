import Felgo 3.0
import QtQuick 2.0

GameWindow {
    id: gameWindow

    screenWidth: 960
    screenHeight: 640

    Scene {
        id: scene

        width: 480
        height: 320

        property int score: 0

        Rectangle {
            anchors.fill: scene.gameWindowAnchorItem
            color: "#324566"
        }

        Text {
            text: "Score " + scene.score
            color: "white"
            anchors.horizontalCenter: scene.horizontalCenter
            anchors.top: scene.gameWindowAnchorItem.top
        }
        Column {
            anchors.centerIn: parent
            spacing: 10
            MyButton {
                labelText: "Add 1"
                onClicked: {
                    scene.increaseScore(1)
                }
            }
            MyButton {
                labelText: "Add 10"
                onClicked: {
                    scene.increaseScore(10)
                }
            }
        }
        Timer{
            interval: 1000
            running: true
            repeat: true
            onTriggered: {
                scene.increaseScore(1)
            }
        }
        Image {
            id: image
            source: "../assets/felgo-logo.png"
            width: 50
            height: 50
            x : 0
            y : 0
        }
        SequentialAnimation {
            id: imageAnimation

            NumberAnimation {

                target: image
                properties: "x"
                from: 0
                to: 15
                duration: 150
            }
            NumberAnimation {

                target: image
                properties: "x"
                from: 15
                to: 0
                duration: 150
            }
        }



        function increaseScore(amount){
            scene.score += amount
            imageAnimation.start()
        }
    }
}
