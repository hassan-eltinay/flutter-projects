import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Zoom Clone files/Zoom Login Page.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoom Clone',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black12,
      ),
      home: ZoomLogin(),
    );
  }
}
// StreamBuilder(
// stream: AuthMethods().authChanges,
// builder: (context, snapshot) {
// if(snapshot.connectionState == ConnectionState.waiting) {
// return Center(
// child: CircularProgressIndicator(),
// );
// }
//
// if (snapshot.hasData){
// return HomeScreen();
// }
// return ZoomLogin();
// },
// ),