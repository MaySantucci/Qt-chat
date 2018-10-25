import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: root

    anchors.fill: parent
    header: Label {
        padding: 10
        text: qsTr("Contacts")
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        
    }
    
    ListView {
        id: listView
        anchors.fill: parent
        topMargin: 48
        leftMargin: 48
        bottomMargin: 48
        rightMargin: 48
        spacing: 20
        
        model: ["Albert Einstein", "Ernest Hemingway", "Hans Gude"]
        delegate: ItemDelegate {
            text: modelData
            width: listView.width - listView.leftMargin - listView.rightMargin
            height: avatar.implicitHeight
            leftPadding: avatar.implicitWidth + 32
            
            Image {
                id: avatar
                source: "qrc:/images/" + modelData.replace(" ", "_") + ".png"
            }
            
        }
    }
}
