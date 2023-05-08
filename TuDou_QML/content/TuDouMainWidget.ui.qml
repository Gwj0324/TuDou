

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import TuDou_qml

Rectangle {
    id: tuDouMainWidget
    width: 900
    height: 700
    color: "#282525"
    property alias lbVersion: lbVersion
    property alias lbTitle: lbTitle
    property alias btPlay: btPlay

    scale: 1
    Text {
        id: lbTitle
        x: -1
        width: tuDouMainWidget.width
        height: tuDouMainWidget.height / 2
        color: "#e23b2d"
        text: qsTr("POTATO")
        anchors.top: parent.top
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 1
        anchors.topMargin: 0
        font.capitalization: Font.AllUppercase
        style: Text.Normal
        textFormat: Text.AutoText
        font.pointSize: 50
        font.styleName: "Bold"
        font.family: Constants.font.family
    }

    Button {
        id: btPlay
        width: tuDouMainWidget.width / 15
        height: tuDouMainWidget.height / 20
        text: qsTr("PLAY")
        anchors.left: parent.left
        anchors.top: lbTitle.bottom
        wheelEnabled: false
        font.pointSize: 16
        font.bold: true
        anchors.leftMargin: tuDouMainWidget.width / 20
        anchors.topMargin: tuDouMainWidget.height / 20
        highlighted: true
        flat: false
        background: Rectangle {
            color: "#0d0a0a"
            radius: 4
        }
    }

    Label {
        id: lbVersion
        x: 1678
        y: 1010
        width: lbVersion.contentWidth
        height: lbVersion.contentHeight
        color: "#ffffff"
        text: qsTr("version 0.1.0")
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        font.pointSize: 12
        anchors.rightMargin: 5
        anchors.bottomMargin: 5
    }
}
