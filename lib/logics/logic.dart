import 'dart:io';
// import 'package:http/http.dart' as http;
abstract class WService {
  String appBackendURL        = 'https://covid-unac.herokuapp.com/';//  https://admin-app.dev.platia.app/
/*   String wallet               = '';
  String username             = '';
  String cookies              = '';
  String sessionDni           = '';
  String sessionToken         = '';
  String sessionNumberPhone   = '';
  bool isFirstLogin           = true; */
  Map<String, String> headers = {};
 /*  Map<String, String> cookiesList = {};
  Map<String, String> cookieSesion = {}; */
  // dynamic client              = new http.Client();

  Future loadHeaders() async {
    headers = {
      'Content-type': 'application/json; charset=utf-8',
      'Accept': 'application/json',
      /* HttpHeaders.authorizationHeader: "Bearer ", */
      // 'cookie': _obj
    };
   /*  if(cookies != ""){
      headers['cookie'] = 'sesion=' + this.cookies;
    } */
  }

/*   Future loadIsFirstLogin() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    print('IS_FIRST_LOGIN: ');
    print(_prefs.getBool('IS_FIRST_LOGIN'));
    isFirstLogin = (_prefs.getBool('IS_FIRST_LOGIN') == null)
                    ? true
                    : _prefs.getBool('IS_FIRST_LOGIN');
  }

  void updateCookie(String response) {
    String allSetCookie = response;
    if (allSetCookie != null) {
      var setCookies = allSetCookie.split(',');
      for (var setCookie in setCookies) {
        var cookiesList = setCookie.split(';');
        for (var cookie in cookiesList) {
          _setCookie(cookie);
        }
      }
      headers['cookie'] = generateCookieHeader();
    }
  }

  void _setCookie(String rawCookie) {
    if (rawCookie.length > 0) {
      var keyValue = rawCookie.split('=');
      if (keyValue.length == 2) {
        var key = keyValue[0].trim();
        var value = keyValue[1];
        // ignore keys that aren't cookies
        if (key == 'path' || key == 'expires')
          return;
        if(key=='sesion'){
          this.cookies      =  value;
        }
        this.cookiesList[key] = value;
      }
    }
  }

  String generateCookieHeader() {
    String cookie = "";
    for (var key in cookiesList.keys) {
      if (cookie.length > 0)
        cookie += ";";
      cookie += key + "=" + cookiesList[key];
    }
    // print(cookie);
    return cookie;
  }
    
  dynamic getDataLocal({String key}) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return (_prefs.getString(key) == null) ? "" : _prefs.getString(key);
  }

  setDataLocal({String key, dynamic data, String type}) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    if(type=='String'){
      await _prefs.setString(key, data);
    } else if(type=='Bool'){
      await _prefs.setBool(key, data);
    } else if(type=='Int'){
      await _prefs.setInt(key, data);
    } else if(type=='Double'){
      await _prefs.setDouble(key, data);
    } 
  } */

}