import 'package:flutter/material.dart';
import 'package:my_app/UserInterface/shared/appbar_widget/appbar_widget.dart';
import 'package:my_app/utils/enum.dart';
import 'package:stacked/stacked.dart';

import 'components/button_widget/button_widget.dart';
import 'initial_page_viewmodel.dart';

class InitialPageView extends StatelessWidget {
  const InitialPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<InitialPageViewModel>.reactive(
      viewModelBuilder: () => InitialPageViewModel(),
      builder: (context, model, child) => model.isBusy
          ? Container(
              color: Colors.white,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
            )
          : Scaffold(
              appBar: AppBarWidget(
                name: "Guilda Mobile",
              ),
              body: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Ei, você, você ai mesmo,",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "seseja aprender sobre o Stacked?",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        if (model.answer != AnswerState.correct)
                          ButtonWidget(type: ButtonType.yes),
                        if (model.answer == AnswerState.idle)
                          ButtonWidget(
                            type: ButtonType.no,
                          )
                      ],
                    ),
                    SizedBox(height: 50),
                    if (model.answer == AnswerState.wrong)
                      Column(
                        children: [
                          Text(
                            'É isso que não dá, tente novamente!',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage('assets/images/no.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      )
                    else if (model.answer == AnswerState.correct)
                      Column(
                        children: [
                          Text(
                            'É isso ai, bora lá!',
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage('assets/images/yes.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      )
                  ],
                ),
              ),
            ),
    );
  }
}
