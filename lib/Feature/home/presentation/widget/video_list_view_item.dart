
import 'package:flutter/material.dart';
import 'package:tiktok_app/Feature/home/data/video_model.dart';
import 'package:tiktok_app/Feature/home/presentation/widget/social_media_icons.dart';
import 'package:tiktok_app/Feature/home/presentation/widget/video_information_widget.dart';
import 'package:tiktok_app/core/theme/app_color.dart';
import 'package:video_player/video_player.dart';

class VideoListViewItem extends StatefulWidget {
  final VideoModel videoModel;
  const VideoListViewItem({super.key,required this.videoModel});

  @override
  State<VideoListViewItem> createState() => _VideoListViewItemState();
}

class _VideoListViewItemState extends State<VideoListViewItem> {
  late VideoPlayerController videoController;
  bool isPlay=true;
  bool isLoading=true;
  @override
  void initState() {
   
    super.initState();
     videoController = VideoPlayerController.asset(widget.videoModel.videoUrl)
     ..initialize().then((_) {
        setState(() {
          videoController.play();
          isPlay=true;
          isLoading=false;
        });
      });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:double.infinity,
      height:MediaQuery.of(context).size.height,
      child: InkWell(
        onTap: (){
          if(isPlay){
            setState(() {
               isPlay=false;
               videoController.pause();
            });
          }else {
            setState(() {
              isPlay=true;
              videoController.play();
            });
          }
        },
        child:  Stack(children:[ 
          if(isLoading)
             Container(color:AppColor.black,child: Center(child: CircularProgressIndicator(color:AppColor.primary,),))
          else 
            VideoPlayer(videoController),
          
          Align(
            alignment:AlignmentDirectional.center,
            child:Visibility(
              visible:isPlay==false,child: Icon(
            Icons.play_arrow,
            size: 80,
            color:AppColor.white.withAlpha((0.4*255).toInt()),
          ),),
          ),
          Align(
            alignment:AlignmentDirectional.bottomEnd,
            child:SocialMediaIconWidget(
              videoModel:widget.videoModel,
            ),
          ),
          Align(
            alignment:AlignmentDirectional.bottomStart,
            child:VideoInformationWidget(
              videoModel:widget.videoModel,
            ),
          ),

        
        ]),
      )
    );
  }
  @override
  dispose() {
    videoController.dispose();
    super.dispose();
  }
}