import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = 'Koramangala, Bangalore';
  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String _selectedLocation = 'fx';
  String _value = 'one';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height*0.30,
          
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: [
            Container(
              decoration: BoxDecoration(
                //shape: BoxShape.circle,
                // border:
                // Border.all(width: 1, color: Theme.of(context).primaryColor),
              ),
              child: Image.asset(
                'assets/images/Icon.png',
                width: 72,
                height: 72,
                color: Colors.white,
                // fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 15),
            ],
          bottom: TabBar(
            indicatorColor: Colors.purple[700],
          tabs: [
            Tab(child: Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)))
                ,child: Text("Login",style: TextStyle(color: Colors.black),
                )
                ),
                ),
            Tab(child: Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),child: Text("Sign up",style: TextStyle(color: Colors.black),)),)
          ]),
        ),
        body: Container(
          child: Center(
              child: TabBarView(
                children: [
              
              Container(
                color:Colors.grey[300] ,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Text("Mobile number",style: TextStyle(color: Colors.grey[500],fontSize:15 ),
                    ),
                  ),
                  Container(                    margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: TextField()),
                  SizedBox(height: 30,),
                  Container(margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
child: Text("OTP",style: TextStyle(color: Colors.grey[500],fontSize: 15))),
                  Container(                    margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
child: TextField()),
Container(
                      margin: EdgeInsets.fromLTRB(50, 5, 50, 0),

  child:   TextButton(onPressed: (){}, child: Text(
    "Forget Password?",style: TextStyle(color: Colors.purple[600]),
  )),
),
Container(
  margin: EdgeInsets.fromLTRB(50, 40, 50, 0),
  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
  alignment: Alignment.center,
  height: 70,
  width: 314,
  child: ElevatedButton(onPressed: (){}, child: Text("Login"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple[600],),minimumSize: MaterialStateProperty.all(Size.infinite),shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(40),
  ),))
                 )) ],)
              ),
              Container(
                child:Column(children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                  Text("Mobile number",style: TextStyle(color: Colors.grey[500],fontSize:15 ),
                  ),
                  TextField(),
                  SizedBox(height: 30,),
                  Text("OTP",style: TextStyle(color: Colors.grey[500],fontSize: 15),

                )],)
              ),
                ],
              ),
              
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20),)

            ),
        ),
        ),
    );
  }
}
