

class VideoModel {
  final String videoUrl;
  final String name;
  final String caption;
  final String songName;
  final String profileImg;
  final String likes;
  final String comments;
  final String shares;
  final String albumImg;

  VideoModel({
    required this.videoUrl,
    required this.name,
    required this.caption,
    required this.songName,
    required this.profileImg,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.albumImg,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
      videoUrl: json['videoUrl'],
      name: json['name'],
      caption: json['caption'],
      songName: json['songName'],
      profileImg: json['profileImg'],
      likes: json['likes'],
      comments: json['comments'],
      shares: json['shares'],
      albumImg: json['albumImg'],
    );
  }

  static List<VideoModel> getVideoList() {
  return [
    VideoModel(
      videoUrl: "assets/videos/video_1.mp4",
      name: "سورة العمران",
      caption: "ياسر الدوسري",
      songName: "original sound",
      profileImg:
          "https://images.unsplash.com/photo-1609599006353-e629aaabfeae?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      likes: "2M",
      comments: "25K",
      shares: "90K",
      albumImg:
          "https://images.unsplash.com/photo-1609599006353-e629aaabfeae?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),
    VideoModel(
      videoUrl: "assets/videos/video_2.mp4",
      name: "سورة القمر",
      caption: "القارئ عبد العزيز",
      songName: "original sound",
      profileImg:
          "https://images.unsplash.com/photo-1609599006353-e629aaabfeae?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      likes: "500K",
      comments: "15K",
      shares: "5K",
      albumImg:
          "https://images.unsplash.com/photo-1609599006353-e629aaabfeae?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),
    VideoModel(
      videoUrl: "assets/videos/video_3.mp4",
      name: "سورة لقمان",
      caption: " القارئ محمد اللحيدان",
      songName: "original sound",
      profileImg:
          "https://images.unsplash.com/photo-1609599006353-e629aaabfeae?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      likes: "700K",
      comments: "30K",
      shares: "20K",
      albumImg:
          "https://images.unsplash.com/photo-1609599006353-e629aaabfeae?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),
    VideoModel(
      videoUrl: "assets/videos/video_4.mp4",
      name: "سورة المؤمنون",
      caption: "ياسر الدوسري",
      songName: "original sound",
      profileImg:
          "https://images.unsplash.com/photo-1609599006353-e629aaabfeae?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      likes: "1M",
      comments: "40K",
      shares: "50K",
      albumImg:
          "https://images.unsplash.com/photo-1609599006353-e629aaabfeae?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),
    VideoModel(
      videoUrl: "assets/videos/video_5.mp4",
      name: "سورة القمر",
      caption: "القارئ ",
      songName: "original sound",
      profileImg:
          "https://images.unsplash.com/photo-1609599006353-e629aaabfeae?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      likes: "3M",
      comments: "100K",
      shares: "200K",
      albumImg:
          "https://images.unsplash.com/photo-1609599006353-e629aaabfeae?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),
  ];
}
  }
