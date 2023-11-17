import 'package:shared_preferences/shared_preferences.dart';

class LocalDataHandler{
  final String key;
  LocalDataHandler(this.key);
  void setLocalData(String value)async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }
  Future<String> getLocalData()async{
    final prefs = await SharedPreferences.getInstance();
    String nowVersion = prefs.getString(key) ?? "0.0.0";
    return nowVersion;
  }
  void removeLocalData()async{
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
    }
}