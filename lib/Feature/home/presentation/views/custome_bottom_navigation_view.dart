

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/widget/upload_icon.dart';

class CustomeBottomNavigationView extends StatefulWidget {
  final Function(int index)? selectedTab;
  const CustomeBottomNavigationView({super.key,required this.selectedTab});

  @override
  State<CustomeBottomNavigationView> createState() => _CustomeBottomNavigationViewState();
}

class _CustomeBottomNavigationViewState extends State<CustomeBottomNavigationView> {
  List bottomItems = [
      {"icon": IconlyLight.home, "label": "Home", "isIcon": true},
      {"icon": IconlyLight.user_1, "label": "Discover", "isIcon": true},
      {"icon": "", "label": "", "isIcon": false},
      {"icon": IconlyLight.message, "label": "Inbox", "isIcon": true},
      {"icon": IconlyLight.profile, "label": "Me", "isIcon": true}
    ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(color:AppColor.appBgColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return bottomItems[index]['isIcon']
                ? InkWell(
                    onTap: () {
                      widget.selectedTab!(index);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          bottomItems[index]['icon'],
                          color: AppColor.white,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(
                            bottomItems[index]['label'],
                            style: TextStyle(color: AppColor.white, fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  )
                : InkWell(
                    onTap: () {
                      widget.selectedTab!(index);
                    },
                    child: const UploadIcon());
          }),
        ),
      ),
    );
  }
}