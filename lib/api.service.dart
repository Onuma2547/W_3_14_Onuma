
import 'dart:convert';

import 'package:w3_14_onuma/user_model.dart';
import 'package:http/http.dart' as http;
class ApiService{
  static Future<List<User>> fetchUser () async {
    final response = await http.get(Uri.parse("https://696457d2e8ce952ce1f16ee2.mockapi.io/users"));

    if(response.statusCode == 200){
      final List data = jsonDecode(response.body);
      return  data.map((e)=> User.fromjson(e)).toList();
    }else{
      throw Exception('โหลดข้อมูลไม่สำเร็จ');

    }
  }

}