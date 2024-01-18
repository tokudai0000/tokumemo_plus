import 'package:shared_preferences/shared_preferences.dart';
class SharedPreferencesInstance{
  static late final SharedPreferences _pref;
  SharedPreferences get pref=>_pref;
  static final SharedPreferencesInstance _instance =SharedPreferencesInstance._internal();
  SharedPreferencesInstance._internal();
  factory SharedPreferencesInstance()=>_instance;
  static initialize()async{
    _pref =await SharedPreferences.getInstance();
  }
}