class JSONData {
  int id;
  int listId;
  String name;

  JSONData(this.id, this.listId, this.name);

  JSONData.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        listId = json['listId'],
        name = json['name'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'listId': listId,
        'name': name,
      };
}
