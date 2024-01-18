import 'package:flutter/material.dart';

class ScoreProgress extends StatelessWidget {
  final int score;
  const ScoreProgress({required this.score, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: LinearProgressIndicator(
              minHeight: 10,
              value: score / 1000,
              valueColor: const AlwaysStoppedAnimation(
                Color(0xFF22A37D),
              ),
              backgroundColor: const Color(0xFFC1C1C1),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          Container(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("0"),
                Row(
                  children: [Text("."), Text("500"), Text(".")],
                ),
                Text("1000"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
