import 'package:flutter/material.dart';
import 'package:serasa_bloc/models/action_home.model.dart';
import 'package:serasa_bloc/widgets/action_button_home.wiget.dart';

class ListActionsHome extends StatefulWidget {
  const ListActionsHome({super.key});

  @override
  State<ListActionsHome> createState() => _ListActionsHomeState();
}

class _ListActionsHomeState extends State<ListActionsHome> {
  List<ActionHome> list = [
    ActionHome(
      icon: Icons.credit_card,
      name: "Pedir cartão de crédito",
    ),
    ActionHome(
      icon: Icons.credit_card,
      name: "Consultas ao meu CPF",
    ),
    ActionHome(
      icon: Icons.credit_card,
      name: "Pedir empréstimo",
    ),
    ActionHome(
      icon: Icons.credit_card,
      name: "Alertas sobre o meu score",
    ),
    ActionHome(
      icon: Icons.credit_card,
      name: "Antecipação do FGTS",
    ),
    ActionHome(
      icon: Icons.credit_card,
      name: "Extrato Serasa",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(
        top: 24,
      ),
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          list.length,
          (index) => ActionButtonHome(
            data: list[index],
          ),
        ),
      ),
    );
  }
}
