import 'package:tokumemo_plus/utils/local_data_handler.dart';

Future <bool> compareNewTerms(){
  bool isChecked=false;
  final LocalDataHandler versionHandler=LocalDataHandler("version");
  final  checkedversion=versionHandler.getLocalData();
  const deliverdVersion="0.0.1";//ここでAPI処理した新しい規約の値を持ってくる
  if(checkedversion==deliverdVersion){
    isChecked=true;
  }
  return Future<bool>.value(isChecked);
}