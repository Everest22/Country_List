import 'dart:convert';

import 'package:untitled/model/car_list.dart';
import 'package:http/http.dart';

class ApiService{
  final endpoint = "http://firstoffer.co.in/api/country/list";

  Future<List<Country>> getCountry() async{
    Response response = await get(Uri.parse(endpoint));
    if(response.statusCode == 200){
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['data'];
      List<Country> data = body.map((dynamic item) => Country.fromJson(item)).toList();
      return data;
    }else{
      throw ('Data has error');
    }
  }
}
