import 'package:tokumemo_plus/utils/local_data_handler.dart';

Future <bool> compareNewTerms(Future<String> deliverdVersion){
  bool isChecked=false;
  final LocalDataHandler versionHandler=LocalDataHandler("version");
  final  checkedversion=versionHandler.getLocalData();
//ここでAPI処理した新しい規約の値を持ってくる
  if(checkedversion==deliverdVersion){
    isChecked=true;
  }
  return Future<bool>.value(isChecked);
}