
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:tiktok_app/Feature/home/data/video_model.dart';
import 'package:tiktok_app/core/theme/app_color.dart';

class SocialMediaIconWidget extends StatelessWidget {
  final VideoModel videoModel;
  const SocialMediaIconWidget({super.key,required this.videoModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.end,
        children: [
          CircleAvatar(
            radius:22,
            backgroundColor:Colors.white,
            child:CircleAvatar(
              backgroundImage:NetworkImage(videoModel.profileImg),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Icon(
            IconlyLight.heart,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(
            height: 10,
          ),
           Text(
            videoModel.likes,
            style:
            TextStyle(color: AppColor.white, fontSize: 12, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
           Icon(
             IconlyLight.chat,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(
            height: 10,
          ),
           Text(
            videoModel.comments,
            style:
            TextStyle(color: AppColor.white, fontSize: 12, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
           Icon(
             IconlyLight.send,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(
            height: 10,
          ),
           Text(
            videoModel.shares,
            style:
            TextStyle(color: AppColor.white, fontSize: 12, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}