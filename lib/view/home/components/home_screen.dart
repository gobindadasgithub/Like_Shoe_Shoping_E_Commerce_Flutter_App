import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import 'appbar.dart';
import 'body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        appBar: customAppBar(),
        body: const Body(),
      ),
    );
  }
}