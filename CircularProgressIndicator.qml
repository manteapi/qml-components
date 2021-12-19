import QtQuick.Shapes 1.15
import QtQuick 2.15

Shape {
    property real value: 0.1
    ShapePath {
        startX: 100
        startY: 0
        strokeWidth: 10
        strokeColor: "black"

        PathArc {
            x: 0; y: 100
            radiusX: 100; radiusY: 100
            useLargeArc: true
        }
    }
}
