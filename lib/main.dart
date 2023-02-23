import 'package:attendance_app/add.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

import 'mainpage.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCXgBJYEqzU163gcfH8_v-0ySEuSxYX12Y",
        authDomain: "attaand-19a30.firebaseapp.com",
        projectId: "attaand-19a30",
        storageBucket: "attaand-19a30.appspot.com",
        messagingSenderId: "1085631263056",
        appId: "1:1085631263056:web:4896cf4e6b4dc92fc87c55",
        measurementId: "G-YWCPG6HFHR",
      ),
    );
  } else {
    await Firebase.initializeApp(name:'attendance');
  }
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendance App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance App'),backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Text('You Can Take Attendance Here!',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 25),),),
        
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              // height: 50,
              // width: w,
               child: ElevatedButton.icon(onPressed: (){
            Navigator.push(
                  context,
                  MaterialPageRoute(
                     builder: (context) => mainpage(),));
          }, icon: Icon(Icons.people), label: Text('Attendance ')),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              // height: 50,
              // width: w,
             
          child: ElevatedButton.icon(onPressed: (){
            Navigator.push(
                  context,
                  MaterialPageRoute(
                     builder: (context) => (add()),));
          }, icon: Icon(Icons.person), label: Text('Add              ')),
           
            ),
          ),
        ],
      ),
    );
  }
}