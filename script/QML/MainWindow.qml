import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {

    width: 640
    height: 480
    //title: qsTr("你好")
    anchors.fill: parent
    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {

        }

        Page {
            Label {
                text: qsTr("Second page/第二页")
                anchors.centerIn: parent
            }
            TestSample {

            }
            TestTwo {
                anchors.horizontalCenter:  parent.horizontalCenter
            }
        }
    }

    TabBar {
        id: tabBar
        anchors.bottom: parent.bottom
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
    }
}
