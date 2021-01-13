class Data {
  final int id;
  final int listId;
  final String name;

  Data({this.id, this.listId, this.name});

  factory Data.fromJson(Map<String, dynamic> parsedJson) {
    return Data(
        id: parsedJson['id'],
        listId: parsedJson["listId"],
        name: parsedJson["name"]);
  }
}
