import 'package:flutter/material.dart';
import 'package:my_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Stacked',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
