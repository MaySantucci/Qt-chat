import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 540
    height: 960

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: ContactPage{}
    }

    ContactPage {
    }
}
