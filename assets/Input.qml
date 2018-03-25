import QtQuick 2.5
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3
import "."
import "./keyboard"

Item {

    Keyboard {
        x: 0
        y: -10
        width: 800
        height: 600
        id: kb

        TextArea {
            id: text
            x: 177
            y: 21
            width: 588
            height: 91
            text: ""
            cursorPosition: 0
            onSelectedTextChanged: console.log("beides")

            onLinkActivated: console.log("ac")
            onLinkHovered:  console.log("hov")

            //linkHovered: console.log("hov")
        }

        function set_char(key) {
            console.log(key + text.cursorPosition)
            var txt1 = text.text
            var txt2 = txt1.slice(0, text.cursorPosition) + key + txt1.slice(text.cursorPosition);
            text.text = txt2
            text.cursorPosition +=1
        }

        function del_pressed() {
            var str = text.text
            //text.cursorPosition = 0
            if(str.length <= 1) {
                str = str.substring(0, text.text.length-1)
            }else {
                str = str.substring(0,text.text.length-2)
            }
            text.text = str
            text.cursorPosition = text.text.length

            //text.cursorPosition = text.text.length
            console.log(text.cursorPosition)
        }

        function ent_pressed() {
            text.text += "\n"
        }

        Text {
            id: input_name
            x: 27
            y: 21
            width: 144
            height: 91
            color: "#f7f6f6"
            text: qsTr("Description:")
            font.pixelSize: 19
        }

        Text {
            id: shift
            x: 50
            y: 305
            width: 57
            height: 69
            color: "#fdf4f4"
            text: qsTr("SHIFT")
            font.pixelSize: 20
        }

        Text {
            id: del
            x: 700
            y: 305
            width: 57
            height: 69
            color: "#fdf4f4"
            text: qsTr("DEL")
            font.pixelSize: 20
        }

        Text {
            id: ent
            x: 700
            y: 401
            width: 57
            height: 69
            color: "#fdf4f4"
            text: qsTr("ENT")
            font.pixelSize: 20
        }


    }
}
