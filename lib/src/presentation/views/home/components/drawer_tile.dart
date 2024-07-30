import 'package:flutter/material.dart';
import 'package:govinddev/src/consts/style.dart';

class DrawerTile extends StatelessWidget {
  final VoidCallback onTap;
  final String name;
  const DrawerTile({Key? key, required this.onTap, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        name,
        style: MobileUiStyle.drawerStyle,
      ),
    );
  }
}
