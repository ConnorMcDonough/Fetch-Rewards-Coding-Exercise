class JSONdata {
  int id;
  int listId;
  String name;

  JSONdata(jsonDecode, {this.id, this.listId, this.name});

  JSONdata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    listId = json['listId'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['listId'] = this.listId;
    data['name'] = this.name;
    return data;
  }
}
