import 'package:flutter/material.dart';
import 'package:serasa_bloc/models/news_financial_situation.model.dart';
import 'package:serasa_bloc/widgets/news_financial_card.widget.dart';
import 'package:serasa_bloc/widgets/score_progress.widget.dart';

import 'serasa_score.widget.dart';

class FinancialSituation extends StatefulWidget {
  const FinancialSituation({super.key});

  @override
  State<FinancialSituation> createState() => _FinancialSituationState();
}

class _FinancialSituationState extends State<FinancialSituation> {
  List<NewsFinancialSituation> list = [
    NewsFinancialSituation(
        title: "Score Versão 3.0",
        description:
            "Conecte suas contas bancárias e melhore a  análise do seu Score"),
    NewsFinancialSituation(
        title: "Seu Score mudou nos útlimos 30 dias",
        description:
            "Receba alertas em tempo real quando sua postuação variar"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(12),
            child: Text(
              "Entenda seu momento financeiro",
              style: Theme.of(context).textTheme.displayMedium,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const SerasaScore(
                  score: 884,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: const ScoreProgress(
                    score: 884,
                  ),
                ),
                ...List.generate(
                  list.length,
                  (index) => NewsFinancialCard(
                    news: list[index],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
