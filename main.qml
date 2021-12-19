import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Timer {
        interval: 100
        running: true
        repeat: true
        onTriggered: {
            progressBar.value = progressBar.value + Math.random() * 0.1
            circularProgressIndicator.value = circularProgressIndicator.value + Math.random() * 0.1
        }
    }


    ColumnLayout {
        anchors.centerIn: parent
        LinearProgressIndicator {
            id: progressBar
            width: 200
            height: 5
            value: 0.0
        }
        CircularProgressIndicator {
            id: circularProgressIndicator
            width: 200
            height: 200
            value: 0.0
        }
    }
    
}
