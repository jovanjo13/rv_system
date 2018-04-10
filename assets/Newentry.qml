import QtQuick 2.5
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3
import "."
import "./keyboard"

Item {
    id: item1

    Text {
        x: 24
        y: 187
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
        y: 65
        width: 278
        height: 88
        text: ""
    }


        Text {
            id: from_text
            x: 382
            y: 251
            width: 138
            height: 29
            text :  "From: " + Home.curDate + " " + slid.hour
        }

        Button{
            x: 551
            y: 253
            width: 46
            height: 27

        }

        Text {
            id: to_text
            x: 165
            y: 371
            width: 132
            height: 30
            text :  "To"
        }


        Text {
            x: 405
            y: 22
            width: 164
            height: 30
            text : "First name"
        }

        TextField {
            x: 405
            y: 176

        }

        Text {
            x: 405
            y: 125
            width: 156
            height: 28
            text : "Last name"
        }

        TextField {
            id: textField
            x: 405
            y: 66

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


    ListView{
        x: 24
        y: 230
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

    Button {
        id: button_edit_description
        x: 165
        y: 23
        text: qsTr("Edit")
    }

    Slider {
        id: slid
        x: 382
        y: 316
        width: 237
        height: 28
        value: 0.5
        onValueChanged: function(){
            //console.log(slid.value * 12)
            console.log(Math.round(slid.value * 12))
            hour = Math.round(slid.value * 12)
        }

        property int hour: 6
    }


}
