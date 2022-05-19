import 'package:extra/screen/tiles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  Store({Key? key}) : super(key: key);

  var tiles = [
    Tile("4.1", "Applo Clinic", "assests/images/apple"),
    Tile("4.2", "1mg Store", "assests/images/apple"),
    Tile("4.1", "Applo Clinic", "assests/images/apple"),
    Tile("4.2", "1mg Store", "assests/images/apple")
  ];

  List<Widget> shopList = [];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return  Scaffold(
          bottomNavigationBar:  BottomNavigationBar(
            iconSize: 30,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.group_outlined),
        label: 'My Group',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.assistant),
        label: 'Assistance',
      ),
    ],),
            backgroundColor: Color.fromRGBO(163, 171, 255, 1),
            appBar: AppBar(
                toolbarHeight: MediaQuery.of(context).size.height * .12,
                leading: Icon(Icons.arrow_back_ios),
                backgroundColor: Color.fromRGBO(163, 171, 255, 1),
                title: Text(
                  "Locate Medical Store",
                  style: TextStyle(fontSize: 17),
                ),
                actions: [
                  Container(
                    child: Icon(Icons.menu,size: 23,color: Colors.grey,),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(161, 161, 165, 254),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Icon(Icons.notifications_active_outlined),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(161, 161, 165, 254)),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ]),
            body: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Colors.white),
                child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                      margin: EdgeInsets.all(20),
                      child: Text("Nearby You",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 3, 5, 111)))),
                  Carding(),
                  Carding(),
                  Carding(),
                  Carding(),
                ]),
              ),
            ),
        );
      },
    );
  }
}

class Carding extends StatelessWidget {
  const Carding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .18,
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 253, 221, 242),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        Row(
          children: [
            Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                margin: EdgeInsets.fromLTRB(20, 16, 30, 10),
                child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 253, 221, 242),
                    radius: 34,
                    child: Image.asset(
                      "assets/images/Icon.png",
                      fit: BoxFit.fill,
                    ))),
            Column(
              children: [
                Container(
                  child: Text(
                    "Apollo Clinic",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.star_outlined,
                    color: Colors.amber,
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Container(
              child: Icon(
                Icons.thumb_up_alt_outlined,
                color: Colors.amber,
              ),
            ),
            Text(" 15"),
            SizedBox(
              width: 30,
            ),
            Container(
              child: Icon(
                Icons.message_outlined,
                color: Colors.amber,
              ),
            ),
            Text(" 4"),
            Container(
              margin: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.25, 0, 0, 0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Start Chart"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  )),
            )
          ],
        )
      ]),
    );
  }
}
