import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 120, 10, 0),
          child: ListView(
           children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
    child: Text(
      'Username',
    ),



        ),
             Container(
               padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
               child: TextField(

                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: 'Tên đăng nhập',
                 ),
               ),
             ),
             Container(
               alignment: Alignment.center,
               padding: EdgeInsets.all(10),
               child: Text(
                 'Password',
               ),



             ),
             Container(
               padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
               child: TextField(
                 obscureText: true,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: 'Mật khẩu',
                 ),
               ),
             ),

        OutlinedButton(
          onPressed: null,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
          ),
          child: Text('Đăng nhập', style: TextStyle(color: Colors.blue),),
        ),

        ],
      ),



      ),

      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
