import QtQuick 2.5
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3
import "."
import "./keyboard"

Item {
    width:800
    id: home


    Calendar {
        id: calendar
        x: 400         //Change for relationship
        y: parent.y
        width: 400
        height: parent.height
        selectedDate: "2018-04-01"
        onClicked: function(date){
            var d = JSON.stringify(date).substring(1,11)
            console.log(d)
            slay.curDate = d
            get_list()

        }



        function test(){
            var http = new XMLHttpRequest()
            var url = background.url + "sql_get"
            var params = "num=22&num2=333";
            http.open("POST", url, true);

            // Send the proper header information along with the request
            http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            //http.setRequestHeader("Content-type","application/json")
            //http.setRequestHeader("Content-length", params.length);
            //http.setRequestHeader("Connection", "close");

            http.onreadystatechange = function() { // Call a function when the state changes.
                if (http.readyState == 4) {
                    if (http.status == 200) {
                        console.log("ok")
                    } else {
                        console.log("error: " + http.status)
                    }
                }
            }
            http.send();
        }

        function get_list(){
            var date = slay.curDate
            var req = new XMLHttpRequest();
            req.open("GET", background.url + "sql_get?date=" + slay.curDate);
            //req.setRequestHeader('Content-type','application/json');
            req.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

            req.onreadystatechange = function() {
                if (req.readyState == 4) {
                    if (req.status == 200) {
                        var arr = JSON.parse(req.responseText)

                        entrymodel.clear()

                        for(var i = 0; i < arr.length; i++){
                            arr[i].timefrom = arr[i].datefrom.substring(11,16)
                            arr[i].timeto = arr[i].dateto.substring(11,16)
                            arr[i].datefrom = slay.stringToDate(arr[i].datefrom)
                            arr[i].dateto = slay.stringToDate(arr[i].dateto)
                            console.log(JSON.stringify(arr[i]))
                            entrymodel.append(arr[i])
                        }
                    } else {
                        console.log("error: " + req.status)
                    }
                }
            }
            req.onerror = function(){
                console.log("get_list ERROR")
            }

            req.send()

        }
    }

    TableView {
        id: tableView
        x: parent.x
        y: parent.y
        height: 350
        width: 400
        model: entrymodel


        TableViewColumn {
            role: "resource"; title: "Ressource"; width: 218
        }

        TableViewColumn {
            role: "timefrom"; title: "From"; width: 90
        }
        TableViewColumn {
            role: "timeto"; title: "To"; width: 90
        }
    }

    ListModel {
            id: entrymodel
        }

    Button {
        id: new_entry_button
        x: 0
        y: 349

        width: 400
        height: 65
        text: "New Entry"
        onClicked: function() {
            get_ressources(function(r){
                    slay.resources_loaded(r)
                    slay.currentIndex = background.newentry
            })


        }



        function get_ressources(callback){
            var req = new XMLHttpRequest();
            req.open("GET", background.url + "sql_get/resources");

            req.onreadystatechange = function() {
              if (req.readyState === XMLHttpRequest.DONE) {
                  var r = JSON.parse(req.responseText)
                  console.log(JSON.stringify(r))
                  callback(JSON.stringify(r))
              }
            }
            req.onerror = function(){
                console.log("get_ressources ERROR")
            }
            req.send()
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
            slay.currentIndex = background.add

        }
    }


}
