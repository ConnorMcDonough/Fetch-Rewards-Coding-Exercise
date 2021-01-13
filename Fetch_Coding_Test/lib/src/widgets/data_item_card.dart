import "package:flutter/material.dart";

import '../../model/data_model.dart';

class DataItemCard extends StatelessWidget {
  final BuildContext context;
  final Data data;

  DataItemCard(this.context, this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      padding: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      height: 80.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
              blurRadius: 5.0, offset: Offset(0, 3), color: Colors.black12),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Text(
              "ID: " + data.id.toString() + " ",
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: MediaQuery.of(context).size.width / 22,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Text(
              "ListID: " + data.listId.toString() + " ",
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: MediaQuery.of(context).size.width / 22,
              ),
            ),
          ),
          Container(
            child: Text(
              "Name: " + data.name.toString(),
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: MediaQuery.of(context).size.width / 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
