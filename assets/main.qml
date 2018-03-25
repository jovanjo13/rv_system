import QtQuick 2.5
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3
import "."
import "./keyboard/"


ApplicationWindow {
    id: background
    visible: true
    width: 800
    height: 480
    color: "#253746"

    property int home: 0
    property int newentry: 1
    property int add: 2
    property int input: 3

    StackLayout{
            id: slay
            currentIndex: home
            anchors.fill:   parent

            Home {

            }

            Newentry {

            }

            Add {

            }

            Input {

            }

        }




}
