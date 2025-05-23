
import 'package:flutter/material.dart';
import 'package:tiktok_app/core/theme/app_color.dart';

class UploadIcon extends StatelessWidget {
  const UploadIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 35,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            child: Container(
              width: 40,
              height: 35,
              decoration: BoxDecoration(
                  color: AppColor.secondary, borderRadius: BorderRadius.circular(8)),
            ),
          ),
          Positioned(
            right:0,
            child: Container(
              width: 40,
              height: 35,
              decoration: BoxDecoration(
                  color: AppColor.primary, borderRadius: BorderRadius.circular(8)),
            ),
          ),
          Positioned(
            right: 5,
            child: Container(
              width: 40,
              height: 35,
              decoration: BoxDecoration(
                  color: AppColor.white, borderRadius: BorderRadius.circular(8)),
              child: const Icon(Icons.add),
            ),
          )
          
        ],
      ),
    );
  }
}
