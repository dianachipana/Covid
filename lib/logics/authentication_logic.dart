import 'dart:convert';
import 'logic.dart';
import 'package:http/http.dart' as http;

abstract class AuthenticationLogic extends WService{
  
  Future<Map>prelogin({String password, String username});
  Future<Map>signup({String name, String lastName, String password, String username, String birthDate,String cellphone});
}

class GenericException implements Exception{}
class TokenException implements Exception{}
class AccountException implements Exception{
  final String message;
  AccountException({this.message});
}

class AuthenticationSimple extends AuthenticationLogic{
  @override
  Future<Map> prelogin({String password, String username}) async {
    dynamic clients = new http.Client();
    // await clients.open();
    await loadHeaders();
    // await saveDataLocal();
    final obj = jsonEncode({
      "password"   : password,
      "username": username
    });
    final response    = await clients.post(appBackendURL + 'v1/usuario/login?password=$password&username=$username', body: obj, headers: headers );
    final decodeData  = json.decode(response.body);
    if(response.statusCode==200){
        return {};
      }else if(decodeData["success"]==false){
        throw AccountException(message: decodeData["message"]);
      }else{
        throw GenericException();
      }
   /*  }else if(response.statusCode==401 || response.statusCode==403){
      throw TokenException();
    }else{
      throw GenericException();
    } */
  }
  @override
  Future<Map> signup({String name, String lastName, String password, String username, String birthDate,String cellphone}) async {
    dynamic clients= new http.Client();
    // await clients.open();
    await loadHeaders();
    final obj = jsonEncode({
      "name"    : name,
      "lastname"  : lastName,
      "cellphone" : cellphone,
      "birthDate" : birthDate,
      "username" : username,
      "password"   : password,
    });
    final response    = await clients.post(appBackendURL + 'v1/usuario', body: obj, headers: headers );
    final decodeData  = json.decode(response.body);
    await clients.close();
    if(response.statusCode==201){
      if(decodeData["message"]=="EL PROCESO DE REGISTRO SE REALIZO DE MANERA SATISFACTORIA"){
        return {};
      }else if(decodeData["success"]==false){
        throw AccountException(message: decodeData["message"]);
      }else{
        throw GenericException();
      }
    }else if(response.statusCode==401 || response.statusCode==403){
      throw TokenException();
    }else{
      throw GenericException();
    }
  }


}