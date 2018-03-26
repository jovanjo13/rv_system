import QtQuick 2.5
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3
import "."
import "./keyboard"

Item {
    id: input_layout
    property string name: "default"
    property int window : background.add

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
            property bool marked: false
            onSelectedTextChanged: function() {
                console.log("Start " + selectionStart)
                console.log(selectionEnd)
                console.log("CP" + cursorPosition)

                var s = selectionStart
                var e = selectionEnd

                console.log(text.selectedText)

                if(s == e){     //one position selected

                    if(!marked) {
                        text.cursorPosition = e
                    }



                    console.log("not match" + cursorPosition + marked)
                    marked = false

                }else {
                    console.log("match" + cursorPosition + marked)
                    marked = true
                    console.log(text.cursorPosition)
                }
            }

            onLinkActivated: console.log("ac")
            onLinkHovered:  console.log("hov")

            //linkHovered: console.log("hov")
        }

        function set_char(key) {

            var txt1 = text.text
            var txt2 = txt1.slice(0, text.cursorPosition) + key + txt1.slice(text.cursorPosition);

            var cp = text.cursorPosition
            text.text = txt2
            text.cursorPosition = cp + 1

        }

        function del_pressed() {

            var str = text.text
            var cp

            console.log(text.marked)



            if(text.marked == true) {
                del_selected_text()
                return
            }

            if(text.cursorPosition <= 0) {
                cp = text.cursorPosition

            }else {
                cp = text.cursorPosition - 1
            }

            str = str.slice(0, cp) + str.slice(text.cursorPosition);

            text.cursorPosition = cp
            text.text = str
            text.cursorPosition = cp

            console.log("end dp cp " + cp)
        }

        function del_selected_text() {
            var s = text.selectionStart
            var e = text.selectionEnd
            console.log("dst" + s + e)

            var str = text.text
            str = str.slice(0,s) + str.slice(e)
            console.log(str)
            text.cursorPosition = 0

            text.text = str

            text.marked = false
            text.cursorPosition = s

        }

        function ent_pressed() {

        }

        Text {
            id: input_name
            x: 27
            y: 21
            width: 144
            height: 91
            color: "#f7f6f6"
            text: input_layout.name
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
