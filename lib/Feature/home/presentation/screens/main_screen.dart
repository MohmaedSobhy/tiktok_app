import 'package:flutter/material.dart';
import 'package:tiktok_app/Feature/home/presentation/screens/home_screen.dart';
import 'package:tiktok_app/Feature/home/presentation/views/custome_bottom_navigation_view.dart';
import 'package:tiktok_app/core/theme/app_color.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:IndexedStack(
        index:currentPage,
        children: [
          HomeScreen(),
          Center(
          child: Text(
            "Discover",
            style: TextStyle(
                color: AppColor.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
          Center(
          child: Text(
            "Upload",
            style: TextStyle(
                color: AppColor.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
          Center(
          child: Text(
            "All Activity",
            style: TextStyle(
                color: AppColor.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
          Center(
          child: Text(
            "Profile",
            style: TextStyle(
                color: AppColor.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
        ],
      ),
      bottomNavigationBar:CustomeBottomNavigationView(
        selectedTab: (index){
          setState(() {
             currentPage=index;
          });
        },
      ),
    );
  }
  

}
