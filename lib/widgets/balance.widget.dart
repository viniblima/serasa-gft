// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Saldo na carteira
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Carteira Serasa"),
              Text(
                "R\$ 0,00",
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(8)),
            child: RawMaterialButton(
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.all(6),
                child: Text("Adicionar Saldo"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
