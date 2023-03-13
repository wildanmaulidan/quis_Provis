import 'package:flutter/material.dart';


void main() {
 runApp(const MyApp());
}


class MyApp extends StatefulWidget {
 const MyApp({Key? key}) : super(key: key);
 @override
 MyAppState createState() {
   return MyAppState();
 }
}


class MyAppState extends State<MyApp> {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Hello App',
     home: Scaffold(
       appBar: AppBar(
           backgroundColor: Colors.white,
            title: Text("Quis Flutter"),
            bottom: TabBar(
              indicatorColor: Colors.black,
              indicatorWeight: 10,
              indicatorPadding: EdgeInsets.all(10),
              indicator: BoxDecoration(
                color: Colors.red,
              ),
              tabs: myTab,
            )
           actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
       body: ListView(
          children: [
            Divider(color: Colors.black),
            ListTile(
              onTap: () {},
              title: const Text('campus alert'),
              subtitle:  Text('Notifikasi ke-0'),

            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {},
              title: const Text('Campus alertt'),
              subtitle:  Text('Notifikasi ke-1'),
            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {},
              title: const Text('campus alert'),
              subtitle:  Text('Notifikasi ke-0'),

            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {},
              title: const Text('Campus alertt'),
              subtitle:  Text('Notifikasi ke-1'),

            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {},
              title: const Text('campus alert'),
              subtitle:  Text('Notifikasi ke-0'),

            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {},
              title: const Text('Campus alertt'),
              subtitle:  Text('Notifikasi ke-1'),

            ),
          ]
       ),
     ),
   );
 }  
}


class ButtonNamaKelompok extends StatelessWidget {
 const ButtonNamaKelompok({Key? key}) : super(key: key);


 @override
 Widget build(BuildContext context) {
   return IconButton(
     icon: Icon(Icons.account_circle_rounded),
     onPressed: () {
       // icon account di tap
       showDialog<String>(
         context: context,
         builder: (BuildContext context) => AlertDialog(
           title: const Text('Nama Kelompok'),
           content: const Text('Nama (email) ; Nama (email)'),
           actions: <Widget>[
             TextButton(
               onPressed: () => Navigator.pop(context, 'OK'),
               child: const Text('OK'),
             ),
           ],
         ),
       );
     },
   );
 }
}


class ButtonPerjanjian extends StatelessWidget {
 const ButtonPerjanjian({Key? key}) : super(key: key);


 @override
 Widget build(BuildContext context) {
   return IconButton(
     icon: Icon(Icons.access_alarm_rounded),
     onPressed: () {
       // icon setting ditap
       const snackBar = SnackBar(
         duration: Duration(seconds: 20),
         content: Text('Kami berjanji  ...'),
       );
       ScaffoldMessenger.of(context).showSnackBar(snackBar);
     },
   );
 }
}
