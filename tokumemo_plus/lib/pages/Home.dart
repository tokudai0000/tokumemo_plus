import 'package:flutter/material.dart';
import 'package:tokumemo_plus/components/CustomAppBars/HomeViewAppBar.dart';
import 'package:tokumemo_plus/components/HomeAdsWidgets.dart';
import 'package:tokumemo_plus/components/HomeAnotherPageAccess.dart';
import 'package:tokumemo_plus/components/HomeSchoolActivitywidgets.dart';
import 'package:tokumemo_plus/components/HomeSchoolServicesWidgets.dart';
class Home extends StatefulWidget{
  const Home({super.key});
  @override
  State<Home> createState()=>_Home();
}
class _Home extends State<Home>{
  bool _issetCAccount =false;
  @override
  void initState(){
    super.initState();

  }
  @override
  void disPose(){
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HomeAppBar(),
          const HomeAdsWidget(),
          HomeSchoolServicesWidget(issetCAcount: _issetCAccount,),
          const HomeSchoolActivityWidget(),
          const AnotherPageAccess(moreInfoPage: '', gopath: ''),
          const AnotherPageAccess(moreInfoPage: '', gopath: ''),
          const AnotherPageAccess(moreInfoPage: '', gopath: '')
        ],
      ),
    );
  }
}