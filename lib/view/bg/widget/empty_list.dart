import 'package:flutter/material.dart';

import 'package:sneakers_app/animation/fade_animation.dart';
import 'package:sneakers_app/theme/custom_app_theme.dart';

class EmptyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        width: width,
        height: height / 1.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeAnimation(
              delay: 0.5,
              child:
              Text("No shoes added!", style: AppThemes.bagEmptyListTitle),
            ),
            FadeAnimation(
              delay: 0.5,
              child: Text(
                "Once you have added, come back:)",
                style: AppThemes.bagEmptyListSubTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}