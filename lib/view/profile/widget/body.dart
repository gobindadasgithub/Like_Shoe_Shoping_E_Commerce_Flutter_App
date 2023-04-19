import 'package:flutter/material.dart';
import 'package:sneakers_app/theme/custom_app_theme.dart';

import '../../../../animation/fade_animation.dart';
import '../../../../model/model.dart';
import '../../../../utils/constants.dart';
import '../../../../view/profile/widget/repeated_list.dart';
import '../../../data/dummy_data.dart';

class BodyProfile extends StatefulWidget {
  const BodyProfile({Key? key}) : super(key: key);

  @override
  _BodyProfileState createState() => _BodyProfileState();
}

class _BodyProfileState extends State<BodyProfile> {
  int statusCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
      width: width,
      height: height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            topProfilePicAndName(width, height),
            const SizedBox(
              height: 40,
            ),
            middleStatusListView(width, height),
            const SizedBox(
              height: 30,
            ),
            middleDashboard(width, height),
            bottomSection(width, height),
          ],
        ),
      ),
    );
  }

  // Top Profile Photo And Name Components
  topProfilePicAndName(width, height) {
    return FadeAnimation(
      delay: 1,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/91388754?v=4"),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                    "Gobinda Chandra Das",
                    style: AppThemes.profileDevName
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit_outlined,
                  color: Colors.grey,
                ))
          ],
        ),
      ),
    );
  }

  // Middle Status List View Components
  middleStatusListView(width, height) {
    return FadeAnimation(
      delay: 1.5,
      child: Container(
        width: width,
        height: height / 9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "My Status",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: width / 1.12,
                height: height / 13,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: userStatus.length,
                    itemBuilder: (ctx, index) {
                      UserStatus status = userStatus[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            statusCurrentIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            width: 120,
                            decoration: BoxDecoration(
                              color: statusCurrentIndex == index
                                  ? status.selectColor
                                  : status.unSelectColor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  status.emoji,
                                  style: const TextStyle(fontSize: 16),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  status.txt,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppConstantsColor.lightTextColor,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Middle Dashboard ListTile Components
  middleDashboard(width, height) {
    return FadeAnimation(
      delay: 2,
      child: Container(
        width: width,
        height: height / 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "    Dashboard",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            RoundedLisTile(
              width: width,
              height: height,
              leadingBackColor: Colors.green[600],
              icon: Icons.wallet_travel_outlined,
              title: "Payments",
              trailing: Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[700],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "2 New",
                      style: TextStyle(
                          color: AppConstantsColor.lightTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppConstantsColor.lightTextColor,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            RoundedLisTile(
              width: width,
              height: height,
              leadingBackColor: Colors.yellow[600],
              icon: Icons.archive,
              title: "Achievement's",
              trailing: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppConstantsColor.darkTextColor,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            RoundedLisTile(
              width: width,
              height: height,
              leadingBackColor: Colors.grey[400],
              icon: Icons.shield,
              title: "Privacy",
              trailing: Container(
                width: 140,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red[500],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Action Needed  ",
                      style: TextStyle(
                          color: AppConstantsColor.lightTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppConstantsColor.lightTextColor,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // My Account Section Components
  bottomSection(width, height) {
    return FadeAnimation(
      delay: 2.5,
      child: Container(
        width: width,
        height: height / 6.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "    My Account",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 15),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "    Switch to Other Account",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[600],
                  fontSize: 17),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "    Log Out",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.red[500],
                  fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}