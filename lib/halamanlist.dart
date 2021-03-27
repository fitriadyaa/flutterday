import 'package:flutter/material.dart';
import 'package:onigiridiary/modeldiary.dart';

class HalamanList extends StatelessWidget {
  const HalamanList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('halamanhome'),
      appBar: AppBar(
        title: Image.asset(
          "images/logo.png",
          height: 48,
        ),
        backgroundColor: const Color(0xFFFFDEDE),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.event,
              color: Colors.red[200],
            ),
          )
        ],
      ),
      body: _getListDiary(context),
    );
  }

  // ListView.builder(
  //     itemCount: diaries.length,
  //     itemBuilder: (context, index) {
  //       return ListTile(
  //         title: Text(diaries[index].note),
  //         subtitle: Text(diaries[index].datepost),
  //         leading: CircleAvatar(),
  //         onTap: () {
  //           Navigator.pushNamed(context, '/detail/' + index.toString());
  //         },
  //       );
  //     }),

  //local function bcs ada _ (underscore)
  Widget _getListDiary(BuildContext context) {
    return ListView.builder(
        key: Key('listdiary'),
        itemCount: diaries.length,
        itemBuilder: _getEntrydiary);
  }

  Widget _getEntrydiary(BuildContext context, int index) {
    return Card(
      color: Colors.yellow[50],
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        title: Container(
          color: Colors.green,
          child: Row(
            children: [
              Expanded(
                flex: 75,
                child: Container(
                  padding: EdgeInsets.all(4),
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 100,
                              child: Container(
                                  color: Colors.cyan,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                              flex: 30,
                                              child: Container(
                                                  color: Colors.yellow,
                                                  child: Column(
                                                    children: [
                                                      Text("Nama"),
                                                    ],
                                                  ))),
                                          Expanded(
                                              flex: 70,
                                              child: Container(
                                                  color: Colors.yellow,
                                                  child: Column(
                                                    children: [
                                                      Text("Kelas"),
                                                    ],
                                                  ))),
                                        ],
                                      ),
                                    ],
                                  ))),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Container(
                                  color: Colors.yellow,
                                  child: Column(
                                    children: [
                                      Text("Row 2"),
                                    ],
                                  ))),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                              child: Container(
                                  color: Colors.green,
                                  child: Column(
                                    children: [
                                      Text("lalalala lorem ipsum llalalalalal"),
                                    ],
                                  ))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        leading: Icon(Icons.person),
        onTap: () {
          Navigator.pushNamed(context, '/detail/' + index.toString());
        },
      ),
    );
  }
}
