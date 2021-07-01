import 'package:my_app/utils/enum.dart';
import 'package:stacked/stacked.dart';

class RulesPageViewModel extends BaseViewModel {
  InfoState state = InfoState.architecture;
  String title = "Arquitetura";
  String buttonText = "Avançar";

  void changeState() {
    if (state == InfoState.architecture) {
      title = "Regras";
      state = InfoState.rules;
      buttonText = "Voltar";
    } else {
      title = "Arquiteturas";
      state = InfoState.architecture;
      buttonText = "Avançar";
    }
    notifyListeners();
  }
}
