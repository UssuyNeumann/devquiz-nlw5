import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:share_plus/share_plus.dart';

class ResulPage extends StatelessWidget {
  final String title;
  final int lenght; 
  final int result;

  const ResulPage({Key key, this.title, this.lenght, this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 40),
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.trophy),
          Column(
            children: [
              Text(
                "Parabéns!",
                style: AppTextStyles.heading40,
              ),
              SizedBox(height: 16),
              Text.rich(
                TextSpan(
                    text: "Você concluiu",
                    style: AppTextStyles.body,
                    children: [
                      TextSpan(
                          text: "\n$title",
                          style: AppTextStyles.bodyBold),
                      TextSpan(
                          text: "\ncom $result de $lenght acertos.",
                          style: AppTextStyles.body),
                    ]),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 68),
                    child: NextButtonWidget.purple(
                      label: "Compartilhar",
                      onTap: () {
                        Share.share('Devquiz NLW5 - Flutter: Resultado do Quiz: $title\nObtive: ${(result/lenght)*100}% de aproveitamento!');
                      },
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 68),
                    child: NextButtonWidget.transparente(
                      label: "Voltar ao início",
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  )),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
