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
    property int detail: 3
    property int input: 4
    property string url: "192.168.0.26:30000/"

    StackLayout{
            id: slay
            currentIndex: home
            anchors.fill:   parent

            property int lastIndex: home

            signal ent_pressed(string str)
            signal edit(string name, string text)


            Home {

            }

            Newentry {

            }

            Add {

            }

            Detail {

            }

            Input {


            }

        }




}
