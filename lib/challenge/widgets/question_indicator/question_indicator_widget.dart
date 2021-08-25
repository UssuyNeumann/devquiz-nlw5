import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/widgets/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentpage;
  final int lenght;
  const QuestionIndicatorWidget({Key key, this.currentpage, this.lenght}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Questão $currentpage",
                style: AppTextStyles.body,
              ),
              Text(
                "de $lenght",
                style: AppTextStyles.body,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ProgressIndicatorWidget(value: currentpage/lenght),
        ],
      ),
    );
  }
}
