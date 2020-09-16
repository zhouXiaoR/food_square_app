
import 'package:shared_preferences/shared_preferences.dart';

class  ZZCacheData {
  static void cache(String key,bool value) async{
    if(value == null) value = false;
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    SharedPreferences prefs = await _prefs;
    prefs.setBool(key,value);
  }

  static Future<bool> getCache(String key) async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    SharedPreferences prefs = await _prefs;
    bool value = prefs.getBool(key);
    if (value == null) value = false;
    return value;
  }
}