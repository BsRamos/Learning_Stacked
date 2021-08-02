import 'package:flutter/material.dart';
import 'package:my_app/utils/enum.dart';
import 'package:stacked/stacked.dart';

import '../../initial_page_viewmodel.dart';

class ButtonWidget extends ViewModelWidget<InitialPageViewModel> {
  final ButtonType type;

  const ButtonWidget({
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, InitialPageViewModel model) {
    return InkWell(
      onTap: type == ButtonType.no ? model.wrongAnswer : model.correctAnswer,
      child: Material(
        elevation: 4,
        animationDuration: Duration(microseconds: 1),
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 50,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Text(
            type == ButtonType.yes ? "Sim" : "Não",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
