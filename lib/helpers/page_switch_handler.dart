import 'package:flutter/material.dart';
import 'package:loading_shimmers/pages/analytics_page.dart';
import 'package:loading_shimmers/pages/explore_page.dart';
import 'package:loading_shimmers/pages/home_page.dart';
import 'package:loading_shimmers/pages/user_page.dart';

class PageSwitchHandler{

  PageSwitchHandler();

  static const  Key homeKey =  PageStorageKey('home');
  static const Key exploreKey =  PageStorageKey('explore');
  static const Key analyticsKey =  PageStorageKey('analytics');
  static const Key userKey =  PageStorageKey('user');
  PageStorageBucket? bucket = PageStorageBucket();


  List pages = [
    const HomePage(key: homeKey,),
    const ExplorePage(key: exploreKey,),
    Container(),
    const AnalyticsPage(key: analyticsKey,),
    const UserPage(key: userKey,)
  ];



}