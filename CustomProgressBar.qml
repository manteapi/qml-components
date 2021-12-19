import QtQuick 2.12

Item{
    id: root

    property real value: 0.5

    property color indicatorColor: "#6d04f3"

    property color backgroundColor: "#d6bcf7"

    QtObject {
        id: privates

        property real progress: Math.max(0.0, Math.min(root.value, 1.0))

        Behavior on progress {
            NumberAnimation { duration: 350 }
        }

        property real progressIsAtBounds: (progress == 0.0 || progress == 1.0) ? 0.0 : 1.0
        Behavior on progressIsAtBounds{
            NumberAnimation { duration: 300 }
        }
    }

    Rectangle {
        id: background

        anchors.centerIn: parent
        width: parent.width
        height: parent.height * privates.progressIsAtBounds

        color: root.backgroundColor

        Rectangle {
            id: indicator
            color: root.indicatorColor
            width: privates.progress * parent.width
            height: parent.height
        }
    }

    Text {
        anchors.bottom: background.top
        anchors.bottomMargin: 5
        anchors.horizontalCenter: background.horizontalCenter
        text: Math.round(privates.progress*100) + "%"
        font.pointSize: 10
        opacity: privates.progressIsAtBounds
    }
}
