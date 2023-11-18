import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class AnotherPageAccess extends StatelessWidget{
  final String moreInfoPage;
  final String gopath;
  const AnotherPageAccess({super.key,required this.moreInfoPage,required this.gopath});
  @override
  Widget build(BuildContext context){
    return Container(
      child: TextButton(
        child: Text(moreInfoPage),
        onPressed: (){
          context.go(gopath);
        },
      ),
    );
  }
}