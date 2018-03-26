import QtQuick 2.5
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3
import "."
import "./keyboard"


Item {
    id: add
    property int edit_button: 1

    Connections{
        target: slay
        onEnt_pressed: {
            if(slay.lastIndex != background.add){
                return
            }

            console.log(str)
            setInput(str)

        }

    }

    function clear() {
        textField2.text = ""
        textField1.text = ""
        textField3.text = ""

    }

    function setInput(str) {
        for(var i = 0; i < add.children.length; i++){
            if(add.children[i].tfID == add.edit_button){
                add.children[i].text = str

            }
        }
    }

    function getInput() {
        var id = add.edit_button
        var name
        var text

        for(var i = 0; i < add.children.length; i++){
            if(add.children[i].tfID == id){
                text = add.children[i].text
            }

            if(add.children[i].textID == id) {
                name = add.children[i].text
            }
        }
        console.log(name + text)
        /*
        slay.descriptionET = name
        slay.editText = text
        slay.lastIndex = background.add
        slay.input()
        slay.currentIndex = background.input
*/
        slay.edit(name,text)
        slay.lastIndex = background.add
        slay.currentIndex = background.input
    }

    function oneLine(text){
        clear()
        text2.text = text
        text2.visible = true
        textField2.visible = true
        button2.visible = true
        text1.visible = false
        textField1.visible = false
        button1.visible = false
        text3.visible = false
        textField3.visible = false
        button3.visible = false
    }


    RadioButton{
        id: button_ressource
        x: 41
        y: 60
        width: 200
        height: 45
        checked: true
        text: "Ressource"
        onClicked: {
            button_department.checked = false
            button_person.checked = false
            oneLine("Ressource")
        }

    }

    RadioButton{
        id: button_person
        x: 41
        y: 261
        width: 200
        height: 45
        text: "Person"
        checked: false
        onClicked: {
            button_ressource.checked = false
            button_department.checked = false
            clear()

            text2.text = "Last name"
            text2.visible = true
            textField2.visible = true
            text1.text = "First name"
            text1.visible = true
            textField1.visible = true
            text3.text = "Department"
            text3.visible = true
            textField3.visible = true
            button1.visible = true
            button2.visible = true
            button3.visible = true
        }
    }

    RadioButton{
        text: "Department"
        id: button_department
        x: 41
        y: 159
        width: 200
        height: 45
        checked: false
        onClicked: {
            button_ressource.checked = false
            button_person.checked = false
            oneLine("Department")
        }
    }


    Text {
        id: text1
        property int textID: 0
        x: 283
        y: 72
        width: 124
        height: 21
        visible: false
        font.pixelSize: 15

    }

    TextField {
        id: textField1
        x: 404
        y: 70
        property int tfID: 0
        visible: false
    }

    Text {
        id: text2
        property int textID: 1
        x: 283
        y: 171
        width: 129
        height: 21
        text: qsTr("Ressource")
        font.pixelSize: 15

    }

    TextField {
        id: textField2
        x: 404
        y: 169
        property int tfID: 1
    }



    Text {
        id: text3
        property int textID: 2
        x: 281
        y: 274
        width: 129
        height: 19
        visible: false
        font.pixelSize: 15
    }

    TextField {
        id: textField3
        x: 404
        y: 271
        visible: false
        property int tfID: 2
    }

    Button {
        id: button_save
        x: 484
        y: 418
        text: qsTr("Save")
        onClicked: {
            //To do JS Code
            console.log(textField3.text)
        }
    }

    Button {
        id: button_cancel
        x: 628
        y: 418
        text: qsTr("Cancel")

        onClicked: function() {
            slay.currentIndex = 0

            //Zurücksetzen
        }
    }

    Button {
        id: button1
        x: 628
        y: 69
        visible: false
        text: qsTr("Edit")
        onClicked: function(){
            add.edit_button = 0
            getInput()
        }
    }

    Button {
        id: button2
        x: 628
        y: 168
        visible: true
        text: qsTr("Edit")
        onClicked: function(){
            add.edit_button = 1
            getInput()
        }
    }


    Button {
        id: button3
        x: 628
        y: 270
        visible: false
        text: qsTr("Edit")
        onClicked: function(){
            add.edit_button = 2
            getInput()
        }
    }

}



