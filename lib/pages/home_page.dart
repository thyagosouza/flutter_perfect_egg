import 'package:flutter/material.dart';
import 'package:perfect_eggs/widgets/action_buttons_widget.dart';
import 'package:perfect_eggs/widgets/button_widget.dart';
import 'package:perfect_eggs/widgets/type_button_widget.dart';
import 'package:provider/provider.dart';

import '../blocs/app_bloc.dart';
import '../widgets/eggs_widget.dart';
import '../widgets/progress_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final bloc = Provider.of<AppBloc>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * .10,
            ),
            Text(bloc.selected),
            Text(bloc.state),
            Text(bloc.time.toString()),
            Text(bloc.seconds.toString()),
            SizedBox(height: 10),
            TypeButtonWidget(),
            SizedBox(height: 10),
            ActionButtonsWidget(),
            SizedBox(height: 10),
            ProgressWidget(),
            SizedBox(height: 10),
            EggsWidget(),
          ],
        ),
      ),
    );
  }
}
