import 'package:http/http.dart' as http;

class API {
  Future<String> fetchRawJSON() async {
    try {
      final http.Response response =
          await http.get("https://fetch-hiring.s3.amazonaws.com/hiring.json");
      return (response.body);
    } catch (error) {
      print("Could not fetch JSON");
    }
  }
}
