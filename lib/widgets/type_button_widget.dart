import 'package:flutter/material.dart';
import 'package:perfect_eggs/widgets/button_widget.dart';
import 'package:provider/provider.dart';

import '../blocs/app_bloc.dart';

class TypeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return bloc.state == 'stopped' ? buttons(bloc) : SizedBox();
  }

  Widget buttons(bloc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ButtonWidget(
            label: 'Soft',
            selected: bloc.selected == 'soft',
            callback: () {
              bloc.select('soft');
            }),
        ButtonWidget(
            label: 'Medium',
            selected: bloc.selected == 'medium',
            callback: () {
              bloc.select('medium');
            }),
        ButtonWidget(
            label: 'Hard',
            selected: bloc.selected == 'hard',
            callback: () {
              bloc.select('hard');
            }),
      ],
    );
  }
}
