import 'dart:convert';

import 'package:Fetch_Coding_Test/data/api.dart';
import 'package:Fetch_Coding_Test/model/data_model.dart';

class Repository {
  API api = new API();
  List<Data> dataList = [];

  Future<List<Data>> fetchSortedList() async {
    int temp = 0;
    List<dynamic> responseJSON = jsonDecode(await api.fetchRawJSON());

    dataList = responseJSON.map((d) => new Data.fromJson(d)).toList();

    dataList.removeWhere((value) => value == null);

    dataList.removeWhere((element) => element.name == null);
    dataList.removeWhere((element) => element.name == "");

    dataList.sort((a, b) {
      int cmp = a.listId.compareTo(b.listId);
      if (cmp != 0) return cmp;
      return a.id.compareTo(b.id);
    });

    return dataList;
  }
}
