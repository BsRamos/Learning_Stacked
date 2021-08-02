import 'package:my_app/UI/pages/initial_page/initial_page_service.dart';
import 'package:my_app/UI/pages/initial_page/initial_page_view.dart';
import 'package:my_app/UI/pages/rules_page/rules_page_view.dart';
import 'package:my_app/core/HTTPS_request.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: InitialPageView, initial: true),
    MaterialRoute(page: RulesPageView),
  ],
  dependencies: [
    Singleton(classType: HTTPSRequest),
    Singleton(classType: InitialPageService),
  ],
)
class App {}
