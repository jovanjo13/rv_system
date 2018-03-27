import QtQuick 2.5
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3
import "."
import "./keyboard"

Item {
    id: item1

    Text {
        x: 24
        y: 158
        width: 158
        height: 24
        id: text_res
        text : "Select ressource"
    }

    Column {
        id: col
        x: 24
        y: 211
    }

    Text {
        id : text_desc
        x: 24
        y: 21
        width: 146
        height: 30
        text: "Description"
    }

    TextArea {
        id: textArea
        x: 24
        y: 57
        width: 278
        height: 88
        text: qsTr("Here is the description you can edit        kjkjjjjjjjjjjjjjjkjkjjkOr something")
    }
    ColumnLayout {
        x: 403
        y: 21
        width: 200
        height: 407

        Text {
            x: 24
            y: 171
            width: 138
            height: 29
            text :  "From"
        }

        Text {
            x: 24
            y: 238
            width: 132
            height: 30
            text :  "To"
        }


        Text {
            x: 24
            y: 293
            width: 164
            height: 30
            text : "First name"
        }

        TextField {
            x: 24
            y: 432

        }

        Text {
            x: 24
            y: 395
            width: 156
            height: 28
            text : "Last name"
        }

        TextField {
            id: textField
            x: 24
            y: 329

        }


    }

    Button {
        id: button_save
        x: 484
        y: 418
        text: qsTr("Save")
        onClicked: {

        }
    }

    Button {
        id: button_cancel
        x: 628
        y: 418
        text: qsTr("Cancel")

        onClicked: function() {

            slay.currentIndex = background.home
        }
    }


    Slider {
        id: sliderVertical
        x: 24
        y: 211
        orientation: Qt.Horizontal
        onStateChanged: function(){
            console.log(sliderVertical.state)
            console.log(sliderVertical.value)

        }
    }

    ListView{
        x: 24
        y: 283
        width: 155
        height: 109
        model: resource_model
        delegate: Text {

            text: resource
        }
        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
        focus: true
    }

    ListModel{
        id: resource_model

        ListElement{
            resource: "isdesso"
        }

        ListElement{
            resource: "isdesso"
        }

        ListElement{
            resource: "isdesso"
        }

        ListElement{
            resource: "isdesso"
        }

        ListElement{
            resource: "isdesso"
        }

    }


}
