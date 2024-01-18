// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/action_home.model.dart';

class ActionButtonHome extends StatelessWidget {
  final ActionHome data;
  const ActionButtonHome({
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(
      //   horizontal: 40,
      // ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Icon(
                data.icon,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
          Container(
            width: 100,
            // height: 40,
            margin: const EdgeInsets.only(top: 12),
            child: Text(
              data.name,
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
