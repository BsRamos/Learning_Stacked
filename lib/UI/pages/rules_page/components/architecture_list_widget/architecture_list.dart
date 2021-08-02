import 'package:flutter/material.dart';
import 'package:my_app/UI/shared/card_info_widget.dart/card_info_widget.dart';

class ArchitectureListWidget extends StatelessWidget {
  const ArchitectureListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(bottom: 60),
      children: [
        CardInfoWidget(
          title: "View",
          infoText:
              "É uma uma representação da UI. Seja ela uma pagina ou apenas um componente",
        ),
        CardInfoWidget(
          title: "ViewModel",
          infoText:
              "Gerencia o estado da visualização, lógica de negócios e qualquer outra lógica conforme necessário da interação do usuário. Ele faz isso usando os serviços",
        ),
        CardInfoWidget(
          title: "Service",
          infoText:
              "É um invólucro de um único conjunto de funcionalidade/recursos. Usado para envolver a funcionalidade do banco de dados, integrar uma API, etc.",
        ),
      ],
    );
  }
}
