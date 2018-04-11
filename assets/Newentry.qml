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
        verticalAlignment: Text.AlignVCenter
    }

    TextArea {
        id: textArea_description
        x: 24
        y: 65
        width: 278
        height: 88
        text: ""
    }

    Button {
        id: button_description
        x: 209
        y: 19
        width: 77
        height: 35
        text: qsTr("Edit")
        onClicked: {
            getInput(textArea_description, text_desc.text)
        }
    }

        Text {
            id: text_firstName
            x: 340
            y: 21
            width: 82
            height: 30
            text : "First name"
            verticalAlignment: Text.AlignVCenter
        }

        TextField {
            id: textField_firstName
            x: 514
            y: 19
            width: 180
            height: 35
            text: "LOLOLOLOLO"
        }

        Button {
            id: button_firstName
            x: 693
            y: 19
            width: 85
            height: 35
            text: qsTr("Edit")
            onClicked: {
                getInput(textField_firstName, text_firstName.text)
            }
        }

        Text {
            id: text_lastName
            x: 340
            y: 81
            width: 82
            height: 28
            text : "Last name"
            verticalAlignment: Text.AlignVCenter
        }

        TextField {
            id: textField_lastName
            x: 514
            y: 78
            width: 180
            height: 35
            text: "LOLOLOLOLO"
        }

        Button {
            id: button_lastName
            x: 693
            y: 78
            width: 85
            height: 35
            text: qsTr("Edit")
            onClicked: {
                getInput(textField_lastName, text_lastName.text)
            }
        }

        function getInput(obj,name,text){
            slay.lastIndex = background.newentry
            slay.edit(obj,name,text)
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
        width: 278
        height: 221
        model: resource_model
        delegate: Text {

            text: resource
        }
        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
        focus: true
    }

    Connections{
        target: slay
        onResources_loaded:  {
            pointer_from.visible = false
            pointer_to.visible = true
            var resources = JSON.parse(o)
            resource_model.clear()
            for(var i = 0; i < resources.length; i++){
                resource_model.append(resources[i])
            }
        }
    }

    ListModel{
        id: resource_model
    }

    Slider {
        id: slid_h
        x: 340
        y: 269
        width: 438
        height: 28
        value: 0.5
        onValueChanged: function(){
            //console.log(slid_h.value * 12)
            console.log(Math.round(slid_h.value * 23))
            hour = Math.round(slid_h.value * 23)
        }

        property int hour: 6
    }

    Slider {
        id: slid_min
        x: 340
        y: 347
        width: 438
        height: 28
        value: 0.5
        onValueChanged: function(){
            //console.log(slid_h.value * 12)
            var val = Math.round(slid_min.value * 12)
            console.log(val * 5)
            hour = Math.round(slid_min.value * 23)
        }

        property int hour: 6
    }

    Text {
        id: text_fromN
        x: 340
        y: 124
        width: 45
        height: 29
        text: qsTr("From")
        font.pointSize: 11
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: from_text
        x: 423
        y: 124
        width: 95
        height: 29
        text: "2018-01-01"
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: text_toN
        x: 340
        y: 160
        width: 45
        height: 30
        text :  "To"
        verticalAlignment: Text.AlignVCenter
    }


    Text {
        id: to_text
        x: 423
        y: 161
        width: 95
        height: 29
        text: "2018-01-01"
        verticalAlignment: Text.AlignVCenter
    }

    Button {
        id: button_changeDate
        x: 693
        y: 138
        width: 85
        height: 35
        text: qsTr("From")
        onClicked: {
            if(pointer_from.visible == true){
                pointer_from.visible = false
                text = "From"
                pointer_to.visible = true
            }else{
                pointer_to.visible = false
                pointer_from.visible = true
                text = "To"
            }
        }
    }

    Button {
        id: button_delete
        x: 340
        y: 418
        text: qsTr("Delete")
        visible: true
        enabled: true
    }

    Text {
        id: pointer_from
        x: 391
        y: 125
        width: 31
        height: 29
        text: qsTr("->")
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: pointer_to
        x: 391
        y: 161
        width: 31
        height: 29
        text: qsTr("->")
        visible: true
        verticalAlignment: Text.AlignVCenter
    }

    Button {
        id: button
        x: 616
        y: 202
        width: 162
        height: 33
        text: qsTr("Select Date")
    }

    Text {
        id: text1
        x: 340
        y: 234
        width: 115
        height: 29
        text: qsTr("Select Hour")
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 11
    }

    Text {
        id: text2
        x: 340
        y: 313
        width: 115
        height: 29
        text: qsTr("Select Minute")
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 11
    }

    Text {
        id: text3
        x: 611
        y: 125
        width: 76
        height: 28
        text: qsTr("12:00")
        font.pointSize: 11
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: text4
        x: 611
        y: 161
        width: 76
        height: 28
        text: qsTr("12:00")
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 11
    }
}
