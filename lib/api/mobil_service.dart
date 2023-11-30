import 'dart:convert';
import 'package:http/http.dart';
import 'package:rentify/Models/mobil_data.dart';

class HttpService {
  final String postsURL = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Mobil>> getPosts() async {
    Response res = await get(postsURL as Uri);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Mobil> mobilData = body
          .map(
            (dynamic item) => Mobil.fromJson(item),
          )
          .toList();

      return mobilData;
    } else {
      throw "Unable to retrieve mobil.";
    }
  }
}
