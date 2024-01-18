import 'package:flutter/material.dart';
import 'package:serasa_bloc/enum/situation_score.enum.dart';
import 'package:serasa_bloc/widgets/score_situation_tag.widget.dart';

class SerasaScore extends StatefulWidget {
  final int score;

  const SerasaScore({required this.score, super.key});

  @override
  State<SerasaScore> createState() => _SerasaScoreState();
}

class _SerasaScoreState extends State<SerasaScore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Título
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Serasa Score",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Icon(
                Icons.chevron_right,
                color: Theme.of(context).textTheme.displaySmall!.color,
                size: 30,
              ),
            ],
          ),

          // Pontuacao
          Container(
            margin: EdgeInsets.only(
              top: 24,
            ),
            child: Row(
              children: [
                Text(
                  widget.score.toString(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 12,
                  ),
                  child: ScoreSituationTag(
                    situation: SitutationScore.excelent,
                  ),
                ),
              ],
            ),
          ),

          // Indicador de progresso
          Container()
        ],
      ),
    );
  }
}
