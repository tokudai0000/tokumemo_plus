import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tokumemo_plus/core/database/local_storage.dart';
import 'package:tokumemo_plus/provider/api_providers.dart';
final isTermVersionBoolProvider=StateNotifierProvider<IsTermVersionBoolNotifier,bool>((ref){
  return IsTermVersionBoolNotifier(ref);
});
class IsTermVersionBoolNotifier extends StateNotifier<bool>{
  static const String keyCurrentTermVersion ='currentTermVersion';
  final _pref=SharedPreferencesInstance().pref;
  final Ref ref;
  IsTermVersionBoolNotifier(this.ref):super(false);
  Future<bool>isTermVersionBool()async{
    final apiTermVersion=ref.watch(currentTermVersionProvider);
    final localVersion=_loadLocalVersion();
    if(localVersion==apiTermVersion.value){
      return true;
    }
    return false;
  }
  Future<void>setCurrentVersion()async{
    final apiTermVersion=ref.watch(currentTermVersionProvider);
    await _setCurrentVersion(apiTermVersion.value as String);
  }
  String? _loadLocalVersion(){
    final loaded=_pref.getString(keyCurrentTermVersion);
    if(loaded==null){
      return null;
    }else{
      return loaded;
    }
  }
  Future<void>_setCurrentVersion(String currentversion)=>_pref.setString(keyCurrentTermVersion, currentversion);
}