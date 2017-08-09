import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow{
    visible: true
    width: 640
    height: 480
    title: qsTr("你好")
    // this way window will not vanish and re-appear
    // but maybe sacrifice the flexibility of ApplicationWindow by quick control two.
    // maybe not dynamic anymore according to the size of the window, and its different from product mode

    Loader {
        anchors.fill: parent
        source: "qrc:/MainWindow.qml"
        objectName: "loader"
        active: true
    }
}
