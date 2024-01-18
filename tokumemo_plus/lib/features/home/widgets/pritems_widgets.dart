import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tokumemo_plus/core/repository/adminAPI/aditem_api.dart';
import 'package:tokumemo_plus/core/repository/adminAPI/pr_items.dart';
import 'package:tokumemo_plus/features/home/pages/pritems_details_page.dart';
import 'package:tokumemo_plus/provider/api_providers.dart';

class PrItemsWidgets extends ConsumerStatefulWidget{
  const PrItemsWidgets({super.key});
  @override
  PrItemsWidgetsState createState()=>PrItemsWidgetsState();
}
class PrItemsWidgetsState extends ConsumerState<PrItemsWidgets>{
  bool _isloading=true;
  @override
  void initstate(){
    final  AsyncValue<AdItems?> aditems=ref.watch(aditemsProvider);
    setState(() async{
      _isloading=aditems.isLoading;
    });
    super.initState();
  }
  @override
  void dispose(){
    _isloading=true;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final AsyncValue<AdItems?> aditems = ref.watch(aditemsProvider);
    return Container(

    );
  }
}