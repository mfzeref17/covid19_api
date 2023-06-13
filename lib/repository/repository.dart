import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uts_max/models/model.dart';

class Repository {
  final _baseUrl =
      'https://6488eeae0e2469c038fe8550.mockapi.io/statistics/Statistics';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Statistics> statistics =
            it.map((e) => Statistics.fromJson(e)).toList();
        return statistics;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
