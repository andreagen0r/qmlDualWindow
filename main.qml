import QtQuick 2.15
import QtQuick.Window 2.15

QtObject {
    id: root

   property var mainWindow: Window {
        id: first
        visible: true
        width: 640
        height: 480
        title: qsTr("Viewport 0")
     flags: Qt.Window | Qt.WindowFullscreenButtonHint
        Component.onDestruction: {
            second.destroyed()
        }

    }

    property var secondWindow: Window {
        id: second
         x: root.mainWindow.width + root.mainWindow.x
         y: root.mainWindow.y
         visible: true
         width: 640
         height: 480
         title: qsTr("Viewport 1")
          flags: Qt.Window | Qt.WindowFullscreenButtonHint
     }

}
