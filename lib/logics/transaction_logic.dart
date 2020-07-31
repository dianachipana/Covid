import 'dart:convert';

import 'package:covid/models/transaction.dart';

import 'logic.dart';

import 'package:http/http.dart' as http;

abstract class TransactionLogic extends WService{
  Future<List<Transaction>> getTransactions();

}

class GenericException implements Exception{}
class TransactionException  implements Exception{}
class TokenException implements Exception{}
class AccountException implements Exception{
  final String message;
  AccountException({this.message});
}

class TransactionSimple extends TransactionLogic{

  List<Transaction>  listTransaction = new List<Transaction>();

  @override
  Future<List<Transaction>> getTransactions() async {
    dynamic client = new http.Client();
    await loadHeaders();
    final response    = await client.get(appBackendURL + 'v1/video', headers: headers );
    print (  response);
    print (  response.body);
    final decodeData  = json.decode(response.body);
    await client.close();
    if(response.statusCode==200){
        final _listTransactions = new  Transactions.fromJsonList(decodeData);
        listTransaction    = _listTransactions.items;
        return listTransaction;
     
    }else if(response.statusCode==401 || response.statusCode==403){
      throw TokenException();
    }else{
      throw GenericException();
    }
  }



}