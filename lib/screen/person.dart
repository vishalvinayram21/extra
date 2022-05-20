import 'package:flutter/material.dart';

class Social extends StatelessWidget {
  const Social({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 238, 238),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 119, 110, 110),
        iconSize: 30,
        selectedLabelStyle: TextStyle(color: Colors.grey),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group_outlined,
              color: Colors.grey,
            ),
            label: 'My Group',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assistant, color: Colors.grey),
            label: 'Assistance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on, color: Colors.grey),
            label: 'Social',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_4x4, color: Colors.grey),
            label: 'Shop',
          ),
        ],
      ),
      appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * .13,
          leading: Icon(Icons.arrow_back_ios,
              color: Color.fromRGBO(163, 171, 255, 1)),
          backgroundColor: Colors.white,
          title: Text(
            "Social",
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          actions: [
            Container(
              child: Icon(
                Icons.menu,
                size: 23,
                color: Colors.white,
              ),
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
      body: Container(
        child: Column(children: [
          Stack(children: [
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.amber,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Positioned(
                bottom: 35,
                left: 18,
                child: Text("The New You Challenge",
                    style: TextStyle(fontSize: 20, color: Colors.white))),
            Positioned(
                bottom: 20,
                left: 18,
                child: Text(
                  "This 2022 commit to be fit",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ))
          ]),
          Card(
            elevation: 3,
            child: ListTile(
              title: Text(
                "Total Distance",
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                "Duration",
                style: TextStyle(fontSize: 11),
              ),
              trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("8.0 KM", style: TextStyle(fontSize: 18)),
                    Text(DateTime.now().toString())
                  ]),
            ),
          ),   
          Container(
            color: Colors.red,
            height: MediaQuery.of(context).size.height*.3,
            child: Column(
              children: [
              GridView.count(
                crossAxisCount: 3,
                children: List.generate(2, (index) {
                  return Column(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/exercise.png'),
                    )
                  ]);
                }),
              )
            ]),
        )
        ]
        ),
      ),
    );
  }
}

