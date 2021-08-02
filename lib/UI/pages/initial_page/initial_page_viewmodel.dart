import 'package:my_app/UI/pages/initial_page/initial_page_service.dart';
import 'package:my_app/UI/pages/rules_page/rules_page_view.dart';
import 'package:my_app/app/app.locator.dart';
import 'package:my_app/model/github_model.dart';
import 'package:my_app/utils/enum.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class InitialPageViewModel extends BaseViewModel {
  AnswerState answer = AnswerState.idle;
  final NavigationService navigationService = NavigationService();
  final InitialPageService initialPageService = locator<InitialPageService>();
  late String name;
  late String login;

  Future<void> initialise() async {
    await runBusyFuture(getUser());
  }

  Future getUser() async {
    GithubModel user = await initialPageService.getUser();
    name = user.name!;
    login = user.login!;
  }

  void wrongAnswer() {
    answer = AnswerState.wrong;
    notifyListeners();
  }

  void correctAnswer() async {
    answer = AnswerState.correct;
    notifyListeners();
    await Future.delayed(Duration(milliseconds: 1200));
    await navigationService.replaceWithTransition(RulesPageView(),
        transition: 'Cupertino', duration: Duration(milliseconds: 1500));
  }
}
