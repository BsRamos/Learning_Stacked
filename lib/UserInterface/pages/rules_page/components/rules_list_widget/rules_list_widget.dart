import 'package:flutter/material.dart';
import 'package:my_app/UserInterface/shared/card_info_widget.dart/card_info_widget.dart';

class RulesListWidget extends StatelessWidget {
  const RulesListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(bottom: 60),
      children: [
        CardInfoWidget(
          title: "#1",
          infoText:
              "As visualizações NUNCA devem fazer uso dos serviços diretamente",
        ),
        CardInfoWidget(
            title: "#2",
            infoText:
                "Preferencialmente as visualizações não devem conter nenhuma lógica, as mesmas devem sempre ser Stateless"),
        CardInfoWidget(
          title: "#3",
          infoText:
              "As visualizações SÓ devem renderizar o estado de seu ViewModel",
        ),
        CardInfoWidget(
          title: "#4",
          infoText:
              "Widgets que representam visualizações de página são vinculados a uma única visualização",
        ),
        CardInfoWidget(
          title: "#5",
          infoText:
              "As ViewModels podem ser reutilizadas para widgets que representam uma mesma View",
        ),
        CardInfoWidget(
          title: "#6",
          infoText: "ViewModels não deve saber sobre outros ViewModels",
        ),
      ],
    );
  }
}
