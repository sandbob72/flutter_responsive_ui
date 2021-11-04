import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/ui/base_widget.dart';
import 'package:flutter_responsive_ui/ui/views/card_user.dart';
import 'package:flutter_responsive_ui/ui/views/box_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      return const Scaffold(
        body: Center(child: BoxListPage()),
      );
    });
  }
}
 // Text(sizingInformation.toString()),