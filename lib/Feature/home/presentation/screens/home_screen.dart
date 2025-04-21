
import 'package:flutter/material.dart';
import 'package:tiktok_app/Feature/home/data/video_model.dart';
import 'package:tiktok_app/Feature/home/presentation/widget/video_list_view_item.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  {
  
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount:VideoModel.getVideoList().length,
      scrollDirection: Axis.vertical,
      itemBuilder:(context,index){
      return VideoListViewItem(videoModel: VideoModel.getVideoList()[index],);
    });
  }
}