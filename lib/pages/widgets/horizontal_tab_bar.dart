//Aqui eu extrai meu widget tabBar criado anteriormente para que ele se transformasse em uma classe
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HorizontalTabBar extends StatelessWidget {
  const HorizontalTabBar({
    super.key,
    required this.onTap,
  });
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        indicatorColor: Colors.white,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        onTap: onTap,
        tabs: ['MODELS S', 'MODEL 3', 'MODEL X', 'MODEL Y']
            .map(
              (e) => Text(
                e,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            )
            .toList(),
        dividerColor: Colors.transparent,
        indicatorSize: TabBarIndicatorSize.tab);
  }
}
