import 'package:my_app/utils/enum.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class InitialPageViewModel extends BaseViewModel {
  AnswerState answer = AnswerState.idle;
  final NavigationService navigationService = NavigationService();

  void wrongAnswer() {
    answer = AnswerState.wrong;
    notifyListeners();
  }

  Future<void> correctAnswer() async {
    answer = AnswerState.correct;
    notifyListeners();
    await Future.delayed(Duration(milliseconds: 1200));
    await runBusyFuture(Future.delayed(Duration(seconds: 2)));
    await navigationService.replaceWith('/rules-page-view');
  }
}
