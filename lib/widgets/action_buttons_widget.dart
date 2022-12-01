import 'package:flutter/material.dart';
import 'package:perfect_eggs/widgets/button_widget.dart';
import 'package:provider/provider.dart';

import '../blocs/app_bloc.dart';

class ActionButtonsWidget extends StatelessWidget {
  const ActionButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);

    switch (bloc.state) {
      case 'stopped':
        return ButtonWidget(
          label: 'START',
          selected: true,
          callback: bloc.start,
        );

      case 'cooking':
        return ButtonWidget(
          label: 'STOP',
          selected: true,
          callback: bloc.stop,
        );

      case 'done':
        return ButtonWidget(
          label: 'DONE',
          selected: true,
          callback: bloc.reset,
        );

      default:
        return ButtonWidget(
          label: 'START',
          selected: true,
          callback: bloc.start,
        );
    }
  }
}
