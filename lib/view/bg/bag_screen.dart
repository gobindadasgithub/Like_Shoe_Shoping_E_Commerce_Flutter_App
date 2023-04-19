
import 'package:flutter/material.dart';
import 'package:sneakers_app/utils/constants.dart';

import 'package:sneakers_app/view/bg/widget/body.dart';

class MyBagScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        body: BodyBagView(),
      ),
    );
  }
}