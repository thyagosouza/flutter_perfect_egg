import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../blocs/app_bloc.dart';

class ProgressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return bloc.state == 'cooking' ? progress(bloc) : SizedBox();
    return Container();
  }

  Widget progress(bloc) {
    return Column(
      children: [
        Text(
          (bloc.time - bloc.seconds).toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 45,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: LinearProgressIndicator(
            value: bloc.percent / 100,
            backgroundColor: Colors.transparent,
            valueColor: AlwaysStoppedAnimation<Color>(
              Color(0xFFfdbf00),
            ),
          ),
        ),
      ],
    );
  }
}
