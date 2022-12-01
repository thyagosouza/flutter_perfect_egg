import 'package:flutter/material.dart';
import 'package:perfect_eggs/widgets/button_widget.dart';
import 'package:perfect_eggs/widgets/type_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * .30,
            ),
            TypeButtonWidget(),
          ],
        ),
      ),
    );
  }
}
