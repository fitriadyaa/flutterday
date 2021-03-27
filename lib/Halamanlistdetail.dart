import 'package:flutter/material.dart';
import 'package:onigiridiary/modeldiary.dart';

class HalamanListDetail extends StatelessWidget {
  @override
  int id;
  HalamanListDetail({this.id});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(diaries[id].datepost),
          Text(diaries[id].feeling),
          Text(diaries[id].note)
        ],
      ),
    );
  }
}
