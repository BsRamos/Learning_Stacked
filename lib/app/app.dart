import 'package:my_app/UserInterface/pages/initial_page/initial_page_view.dart';
import 'package:my_app/UserInterface/pages/rules_page/rules_page_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: InitialPageView, initial: true),
    MaterialRoute(page: RulesPageView),
  ],
  dependencies: [],
)
class App {}
