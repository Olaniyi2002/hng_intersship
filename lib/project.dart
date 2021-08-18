import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Project extends StatefulWidget {
  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  var name="";
  var age="";
  final agecontrol = TextEditingController();
  final nameControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text=MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        title: Text("HNG INTERSHIP"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: height/19,
                        width: width/1.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          ),
                        child: Center(child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("NAME:",style: TextStyle(fontSize: text*24,color: Colors.black),),
                            ),
                            Text(name,style: TextStyle(fontSize: text*20,color: Colors.black),),
                          ],
                        ))),
    ),
                  Container(
                      height: height/19,
                      width: width/1.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("AGE:",style:TextStyle(fontSize: text*24,color: Colors.black),),
                          ),
                          Text(age,style: TextStyle(fontSize: text*20,color: Colors.black),),
                        ],
                      ))),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextField(
                  controller: nameControl,
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextField(
                  controller: agecontrol,
                  decoration: InputDecoration(
                    labelText: "Enter your Age",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.go,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:90.0, right:90),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        name = nameControl.text;
                        age = agecontrol.text;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:  BorderRadius.circular(30.0),
                      ),),
                    child: Text("Result")),
              ),
              Padding(
                padding: const EdgeInsets.only(top:200.0),
                child: Center(
                  child: InkWell(
                      child:  Text('Open HNG website',style: TextStyle(fontSize: text*25),),
                      onTap: () => launch('https://hng.tech')
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
