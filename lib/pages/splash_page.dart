import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:perfect_eggs/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  Future delay(context) async {
    await Future.delayed(Duration(milliseconds: 6000));
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    delay(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * .3,
          ),
          Container(
              // color: Colors.red,
              width: double.infinity,
              height: 300,
              child: FlareActor(
                'assets/animations/egg-cooking.flr',
                alignment: Alignment.center,
                fit: BoxFit.contain,
                isPaused: false,
                animation: 'start',
              )),
          Text(
            'Perfect Eggs',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
