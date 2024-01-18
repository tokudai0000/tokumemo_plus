import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tokumemo_plus/core/repository/adminAPI/aditem_api.dart';
import 'package:tokumemo_plus/core/repository/api_repository.dart';
import 'package:tokumemo_plus/core/repository/api_result.dart';
import 'package:tokumemo_plus/core/repository/currentTermVersionAPI/current_term_version_api.dart';
import 'package:tokumemo_plus/core/repository/helpMessageAgreeAPI/help_message_agree_api.dart';
import 'package:tokumemo_plus/core/repository/homeEventInfoAPI/home_event_info_api.dart';
//repositoryそのものの監視
final repositoryProvider=Provider((ref)=>ApiRepository());
//各々の監視
final currentTermVersionProvider=FutureProvider<String?>((ref)async {
  final repository = ref.read(repositoryProvider);
  final Result<CurrentTermVersion>result = await repository
      .getTermTextVersion();
  result.when(success: (CurrentTermVersion curretntermversion){
    return curretntermversion.currentTermVersion;
  }, failure: (error){
    return null;
  });
});
final aditemsProvider=FutureProvider<AdItems?>((ref)async{
  final repository = ref.read(repositoryProvider);
  final Result<AdItems>result= await repository.getAdItems();
  result.when(success: (AdItems aditems){
    return aditems;
  }, failure: (error) {  });
});
final helpMessageAgreeProvider=FutureProvider<HelpMessageAgree?>((ref)async{
  final repository=ref.read(repositoryProvider);
  final Result<HelpMessageAgree>result= await repository.getHelpMessageAgree();
  result.when(success: (HelpMessageAgree helpMessageAgree){
    return helpMessageAgree;
  }, failure: (error){});
});
final homeEventInfosProvider=FutureProvider<HomeEventInfo?>((ref) async{
  final repository =ref.read(repositoryProvider);
  final Result<HomeEventInfo>result=await repository.getHomeEventInfos();
  result.when(success: (HomeEventInfo homeeventinfo){
    return homeeventinfo;
  }, failure: (error){});
});
