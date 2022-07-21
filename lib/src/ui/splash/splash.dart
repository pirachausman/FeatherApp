import 'package:feather/src/ui/main/main_screen.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _goHome();
  }

  void _goHome(){
    Future.delayed(Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute<void>(builder: (_) => MainScreen()));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/splash.jpeg'),
                  fit: BoxFit.fill
              )
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text('Weatherly', style: TextStyle(fontFamily: 'Futura'),),
        )

      ],
    );
  }
}
