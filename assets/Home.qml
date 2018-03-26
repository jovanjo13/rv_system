import QtQuick 2.5
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3
import "."
import "./keyboard"

Item {
    width:800

    Calendar {
        id: calendar
        x: 400         //Change for relationship
        y: parent.y
        width: parent.width - x
        height: parent.height
        onClicked: function(date){
            //textEdit.text = date
            //slay.currentIndex = input
        }
    }

    TableView {
        id: tableView
        x: parent.x
        y: parent.y
        height: 350
        width: calendar.x
        model: myModel


        TableViewColumn {
            role: "res"; title: "Ressource"; width: 198
        }

        TableViewColumn {
            role: "tfrom"; title: "From"; width: 100
        }
        TableViewColumn {
            role: "tto"; title: "To"; width: 100
        }
    }

    ListModel {
            id: myModel
            ListElement {
                desc : "Besprechung"
                res :   "Besprechungsraum 1"
                dfrom : "12.01.2018"
                tfrom : "11:00"
                tto :   "12:00"
                dto :   "12.01.2018"

            }

            ListElement {
                desc : "Gestaltung"
                res :   "Raum 2"
                dfrom : "12.01.2018"
                tfrom : "14:00"
                tto :   "14:30"
                dto :   "12.01.2018"

            }

            ListElement {

                desc :  "Beides"
                res :   "Raum 2"
                dfrom : "12.01.2018"
                tfrom : "14:00"
                tto :   "14:30"
                dto :   "12.01.2018"
            }

        }



    Button {
        id: new_entry_button
        x: 0
        y: 349

        width: 400
        height: 65
        text: "New Entry"

        onClicked: function() {
            slay.currentIndex = 1

        }
    }

    Button {
        id: add_component_button
        x: 0
        y: 415

        width: 400
        height: 65
        text: "Add Component"

        onClicked: function() {
            slay.currentIndex = 2
        }
    }


}
