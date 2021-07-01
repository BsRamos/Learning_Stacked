import 'package:flutter/material.dart';
import 'package:my_app/UserInterface/pages/rules_page/components/architecture_list_widget/architecture_list.dart';
import 'package:my_app/UserInterface/pages/rules_page/components/rules_list_widget/rules_list_widget.dart';
import 'package:my_app/UserInterface/pages/rules_page/rules_page_viewmodel.dart';
import 'package:my_app/UserInterface/shared/appbar_widget/appbar_widget.dart';
import 'package:my_app/utils/enum.dart';
import 'package:stacked/stacked.dart';

class RulesPageView extends StatelessWidget {
  const RulesPageView({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return ViewModelBuilder<RulesPageViewModel>.reactive(
      viewModelBuilder: () => RulesPageViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBarWidget(
          name: "Guilda Mobile",
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                model.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.lightBlue,
                ),
              ),
            ),
            Expanded(
              child: model.state == InfoState.architecture
                  ? ArchitectureListWidget()
                  : RulesListWidget(),
            ),
          ],
        ),
        bottomSheet: InkWell(
          onTap: model.changeState,
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue,
            child: Center(
              child: Text(
                model.buttonText,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
