import 'dart:convert';

import 'package:Fetch_Coding_Test/data/api.dart';
import 'package:Fetch_Coding_Test/model/json_data.dart';

class Repository {
  API api = new API();
  Future<JSONdata> fetchJSON() async {
    return JSONdata(jsonDecode(await api.fetchRawJSON()));
  }
}
