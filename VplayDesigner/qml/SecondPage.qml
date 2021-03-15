import QtQuick 2.0
import Felgo 3.0

Page {
    id: page
    width: 640
    height: 480
    backgroundColor: Theme.colors.secondaryBackgroundColor
    title: "Halaman Kedua"

    AppSlider {
        id: appSlider
        x: 218
        y: 205
        value: 0.5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    AppText {
        id: appText
        text: qsTr("Set Value")
        anchors.bottom: appSlider.top
        anchors.bottomMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    AppText {
        id: appText1
        width: 36
        height: 13
        text: appSlider.value
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: appSlider.bottom
        anchors.topMargin: 0
    }

    AppButton {
        id: appButton
        text: "Reset"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: appText.top
        onClicked: appSlider.value = 0
    }

}
