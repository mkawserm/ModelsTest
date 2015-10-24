import QtQuick 2.4
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.3

import person 1.0

ApplicationWindow {
    id:root
    title: qsTr("Models Test")
    width: 640
    height: 480
    visible: true

    ListView {
        id:listView

        anchors {
            fill: parent
            margins: 20
        }

        boundsBehavior: Flickable.StopAtBounds
        spacing: 5

        model: _persons
        delegate: Rectangle {
            height:root.height/4
            width: listView.width

            border.width: 1.5
            border.color: "black"

            Text {
                anchors.fill: parent

                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

                font.pixelSize: height/4

                text:name
            }
        }
    }

    Row {
        height:parent.height*0.05
        width: parent.width

        anchors.bottom: parent.bottom

        TextField {
            id:nameTextInput
            height:parent.height
            width:parent.width*0.8
            placeholderText: "Name"
        }

        TextField {
            id:ageTextInput
            height:parent.height
            width:parent.width*0.1
            placeholderText: "Age"
        }

        Button {
            height:parent.height
            width:parent.width*0.1

            text : "Add"

            onClicked: {
                _persons.append(personComponent.createObject(parent,{
                                                              name: nameTextInput.text,
                                                              age: ageTextInput.text
                                                             }))
                nameTextInput.text = ""
                ageTextInput.text = ""
            }
        }
    }

    Component {
        id:personComponent
        Person {}
    }
}
