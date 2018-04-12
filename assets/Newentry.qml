import QtQuick 2.5
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3
import "."
import "./keyboard"

Item {
    id: item1

    function new_entry(){
        textArea_description.text = ""
        textField_firstName.text = ""
        textField_lastName.text = ""
        slid_h.value = 0.5
        slid_min.value = 0.5
        from_text.text = slay.stringToDate(slay.curDate)
        to_text.text = slay.stringToDate(slay.curDate)
        time_from.text = "12:30"
        time_to.text = "12:30"
        pointer_from.visible = false
        pointer_to.visible = true
    }

    function edit_entry(str){
        var obj = JSON.parse(str)
        textArea_description.text = obj.description
        textField_firstName.text = obj.firstName
        textField_lastName.text = obj.lastName

        var h = obj.timeto.substring(0,2)
        slid_h.value = h /23
        var min = obj.timeto.substring(3,5)
        slid_min.value = min /55

        var hOld = obj.timefrom.substring(0,2)
        slid_h.value = h /23
        var minOld = obj.timefrom.substring(3,5)
        slid_min.value = min /55

        from_text.text = obj.datefrom
        to_text.text = obj.dateto
        time_from.text = obj.timefrom
        time_to.text = obj.timeto
        pointer_from.visible = false
        pointer_to.visible = true
    }

    Text {
        x: 24
        y: 187
        width: 158
        height: 24
        id: text_res
        text : "Select ressource"
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
            text: ""
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
            text: ""
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
            //TODO delete all
            slay.currentIndex = background.home
        }
    }


    ListView{
        id: lv
        x: 24
        y: 230
        width: 278
        height: 221
        model: resource_model
        delegate: Item{
            width: parent.width
            height: 30

            Text{
                text:resource
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("clicked " + index)
                    lv.currentIndex = index
                }

            }
        }

        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
        focus: true

    }

    Connections{
        target: slay
        onResources_loaded:  {
            var resources = JSON.parse(o)
            resource_model.clear()
            for(var i = 0; i < resources.length; i++){
                resource_model.append(resources[i])
            }

            if(state === background.neww){
                new_entry()
            }else{
                edit_entry(data)
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
            console.log(Math.round(slid_h.value * 23))
            hour = Math.round(slid_h.value * 23)

            if(pointer_from.visible == true){
                time_from.text = slid_h.hour + ":" + slid_min.min
            }else{
                time_to.text = slid_h.hour + ":" + slid_min.min
            }
        }

        property int hour: 12
        property double old_val: 0.5
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
            var val = Math.round(slid_min.value * 11)
            console.log(val * 5)
            min = val * 5

            if(pointer_from.visible == true){
                time_from.text = slid_h.hour + ":" + slid_min.min
            }else{
                time_to.text = slid_h.hour + ":" + slid_min.min
            }
        }

        property int min: 30
        property double old_val: 0.5
    }

    Text {
        id: text_fromN
        x: 340
        y: 134
        width: 45
        height: 29
        text: qsTr("From")
        font.pointSize: 11
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: from_text
        x: 423
        y: 134
        width: 95
        height: 29
        text: "2018-01-01"
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: text_toN
        x: 340
        y: 170
        width: 45
        height: 30
        text :  "To"
        verticalAlignment: Text.AlignVCenter
    }


    Text {
        id: to_text
        x: 423
        y: 171
        width: 95
        height: 29
        text: "2018-01-01"
        verticalAlignment: Text.AlignVCenter
    }

    Button {
        id: button_changeDate
        x: 693
        y: 148
        width: 85
        height: 35
        text: qsTr("From")
        onClicked: {
            var oldH = slid_h.value
            var oldMIN = slid_min.value

            if(pointer_from.visible == true){
                pointer_from.visible = false
                text = "From"
                pointer_to.visible = true
            }else{
                pointer_to.visible = false
                pointer_from.visible = true
                text = "To"
            }

            slid_h.value = slid_h.old_val
            slid_min.value = slid_min.old_val
            slid_h.old_val = oldH
            slid_min.old_val = oldMIN
            console.log(slid_h.hour + ":" + slid_min.min)
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
        y: 135
        width: 31
        height: 29
        text: qsTr("->")
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: pointer_to
        x: 391
        y: 171
        width: 31
        height: 29
        text: qsTr("->")
        visible: true
        verticalAlignment: Text.AlignVCenter
    }

    Button {
        id: button
        x: 616
        y: 205
        width: 162
        height: 33
        text: "Select Date"
        onClicked: {
            if(pointer_from.visible == true){
                slay.select_date(from_text)
            }else{
                slay.select_date(to_text)
            }

            slay.currentIndex = background.dateSelection
        }
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
        id: time_from
        x: 611
        y: 135
        width: 76
        height: 28
        text: slid_h.hour + ":" + slid_min.min
        font.pointSize: 11
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: time_to
        x: 611
        y: 171
        width: 76
        height: 28
        text: slid_h.hour + ":" + slid_min.min
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 11
    }
}
