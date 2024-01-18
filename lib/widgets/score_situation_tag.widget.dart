import 'package:flutter/material.dart';
import 'package:serasa_bloc/enum/situation_score.enum.dart';
import 'package:serasa_bloc/models/score_config.model.dart';

class ScoreSituationTag extends StatelessWidget {
  final SitutationScore situation;

  ScoreSituationTag({
    required this.situation,
    super.key,
  });

  final Map<SitutationScore, ScoreConfig> config = {
    SitutationScore.excelent:
        ScoreConfig(text: "Excelente", color: const Color(0xFFE5FAF5)),
    SitutationScore.regular: ScoreConfig(
      text: "Regular",
      color: Colors.yellow,
    ),
    SitutationScore.bad: ScoreConfig(text: "Ruim", color: Colors.red),
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      color: config[situation]!.color,
      child: Text(
        config[situation]!.text,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.black,
            ),
      ),
    );
  }
}
