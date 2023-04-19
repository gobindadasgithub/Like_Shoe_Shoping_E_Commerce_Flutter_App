import 'package:flutter/material.dart';
import 'package:sneakers_app/model/show_model.dart';
import 'package:sneakers_app/view/detail/components/app_bar.dart';
import 'package:sneakers_app/view/detail/components/body.dart';
import '../../utils/constants.dart';


class DetailScreen extends StatelessWidget {
  ShoeModel model;
  bool isComeFromMoreSection;
  DetailScreen({required this.model,required this.isComeFromMoreSection});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: AppConstantsColor.backgroundColor,
          appBar: customAppBarDe(
            context,
          ),
          body: DetailsBody(
            model: model,
            isComeFromMoreSection: isComeFromMoreSection,
          )),
    );
  }
}