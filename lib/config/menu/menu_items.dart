import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
      title: 'Buttons',
      subTitle: 'Flutter Buttons',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItems(
      title: 'Cards',
      subTitle: 'Flutter Cards',
      link: '/cards',
      icon: Icons.credit_card_outlined),
  MenuItems(
      title: 'Labels',
      subTitle: 'Flutter Labels',
      link: '/labels',
      icon: Icons.label_important_rounded),
];
