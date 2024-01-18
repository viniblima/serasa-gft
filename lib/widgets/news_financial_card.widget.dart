import 'package:flutter/material.dart';
import 'package:serasa_bloc/models/news_financial_situation.model.dart';

class NewsFinancialCard extends StatelessWidget {
  final NewsFinancialSituation news;
  const NewsFinancialCard({required this.news, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 18),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 10.0,
            offset: Offset(2.0, 0.0),
            spreadRadius: 0.1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Aqui vai a imagem do card
          Container(
            width: MediaQuery.of(context).size.width * 0.2 - 24,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8 - 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.title,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  news.description,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.black,
                      ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
