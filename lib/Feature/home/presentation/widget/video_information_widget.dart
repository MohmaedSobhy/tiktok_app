
import 'package:flutter/material.dart';
import 'package:tiktok_app/Feature/home/data/video_model.dart';
import 'package:tiktok_app/core/theme/app_color.dart';

class VideoInformationWidget extends StatelessWidget {
  final VideoModel videoModel;
  const VideoInformationWidget({super.key,required this.videoModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.all(10),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width*0.9,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              videoModel.name,
              style: TextStyle(
                  color: AppColor.white, fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              videoModel.caption,
              style: TextStyle(color: AppColor.white),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.music_note,
                  color: Colors.white,
                  size: 15,
                ),
                Flexible(
                  child: Text(
                    videoModel.songName,
                    style: TextStyle(color:AppColor.white, height: 1.5),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}