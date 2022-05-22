import 'package:flutter/material.dart';
import 'package:practice_app/Zoom%20Clone%20files/password%20login%20screen.dart';

class ZoomLogin extends StatefulWidget {
  const ZoomLogin({Key? key}) : super(key: key);

  @override
  State<ZoomLogin> createState() => _ZoomLoginState();
}

class _ZoomLoginState extends State<ZoomLogin> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Start or Join a meeting',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Image.asset('assets/images/onboarding.jpg'),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color:Colors.blue),
                  )
              ),

              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));

              },
              child:
              Text('Sign in'),
            ),
          ),




        ],
      ),

    );
  }
}
