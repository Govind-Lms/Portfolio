import 'package:flutter/material.dart';
import 'package:govinddev/src/consts/style.dart';

class MaterailButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String name;

  const MaterailButtonWidget({Key? key, required this.onTap, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      highlightColor: Colors.white60,
      child: Text(name, style: UIStyle.appBarStyle),
    );
  }
}
