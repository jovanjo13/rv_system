import QtQuick 2.5
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3
import "."
import "./keyboard"

Item {
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
}
