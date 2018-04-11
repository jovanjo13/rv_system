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
            //get_ressources()
            //get_list()

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
            console.log("getlist")
            var date = slay.curDate
            var req = new XMLHttpRequest();
            req.open("GET", background.url + "sql_get");
            //req.setRequestHeader('Content-type','application/json');
            req.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

            req.onreadystatechange = function() { // Call a function when the state changes.
                if (req.readyState == 4) {
                    if (req.status == 200) {
                        console.log("ok")
                    } else {
                        console.log("error: " + req.status)
                    }
                }
            }

            /*req.onreadystatechange = function() {
                console.log("stateChange" + req.statusText)
                if (req.readyState == XMLHttpRequest.DONE) {
                    console.log(req.responseText)
                    var res = JSON.parse(req.responseText)
                    console.log(JSON.stringify(res))

                          console.log(res[0].datefrom)
                          console.log(res[0].datefrom.substring(0,10))

                          for(var i = 0; i < res.length; i++){
                              myModel.append({
                                                 fn   : res[i].firstName,
                                                 ln   : res[i].lastName,
                                                 desc : res[i].description,
                                                 dfrom: res[i].datefrom,
                                                 tfrom: res[i].datefrom



                                             })
                          }

                }*/
                req.onerror = function(){
                    console.log("get_list ERROR")
                }

                req.send('date=' + date)

        }

    }

    TableView {
        id: tableView
        x: parent.x
        y: parent.y
        height: 350
        width: 400
        model: myModel


        TableViewColumn {
            role: "res"; title: "Ressource"; width: 218
        }

        TableViewColumn {
            role: "tfrom"; title: "From"; width: 90
        }
        TableViewColumn {
            role: "tto"; title: "To"; width: 90
        }
    }

    ListModel {
            id: myModel
            ListElement {
                desc : "Besprechung"
                res :   "Raum 1"
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
                res :   "Firmenauto 1"
                dfrom : "12.01.2018"
                tfrom : "14:00"
                tto :   "17:00"
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
