import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.of(context).pushReplacementNamed('/main');
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 222, 253, 217),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Logo
              Image.asset(('assets/Picture1.png'),
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 16), //Space between logo and text
              const Text('ENLIGHTEN',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight:  FontWeight.bold,
                ),
              ),
              const Text('Empowering Education for All',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}