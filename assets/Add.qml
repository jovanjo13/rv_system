import QtQuick 2.5
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3
import "."
import "./keyboard"

Item {
    id: add



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

            text1.text = "Ressource"
            text1.visible = true
            textField1.visible = true
            text2.visible = false
            textField2.visible = false
            text3.visible = false
            textField3.visible = false

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
            text1.text = "Last name"
            text1.visible = true
            textField1.visible = true
            text2.text = "First name"
            text2.visible = true
            textField2.visible = true
            text3.text = "Department"
            text3.visible = true
            textField3.visible = true
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
            text1.text = "Department"
            text1.visible = true
            textField1.visible = true
            text2.visible = false
            textField2.visible = false
            text3.visible = false
            textField3.visible = false
        }
    }


    Text {
        id: text2
        x: 388
        y: 72
        width: 124
        height: 21
        text: qsTr("Ressource")
        font.pixelSize: 12
    }

    TextField {
        id: textField2
        x: 648
        y: 70



    }

    Text {
        id: text1
        x: 388
        y: 171
        width: 129
        height: 21
        font.pixelSize: 12
        visible: false
    }

    TextField {
        id: textField1
        x: 648
        y: 169
        visible: false
    }



    Text {
        id: text3
        x: 388
        y: 274
        width: 129
        height: 19
        visible: false
        font.pixelSize: 12
    }

    TextField {
        id: textField3
        x: 648
        y: 271
        visible: false
    }

    Button {
        id: button
        x: 484
        y: 418
        text: qsTr("Save")
        onClicked: {
            //To do JS Code
            console.log(textField3.text)
        }
    }

    Button {
        id: button1
        x: 628
        y: 418
        text: qsTr("Cancel")

        onClicked: function() {
            slay.currentIndex = 0
        }
    }

}



