import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;
import 'package:yugitter/model/cards.dart';
import 'package:yugitter/utils/api_constant.dart';

class CardApiProvider{
  Client _client = Client();
  Future<List<Card>> fetchCards() async{
    print("fetching yugioh cards data...");
    final response = await _client.get(BASE_YUGIOH_URL);
    if(response.statusCode == 200){
      return compute(cardFromJson,response.body);
    }else
      throw Exception('Failed To Load');
  }
}