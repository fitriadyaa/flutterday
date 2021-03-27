import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onigiridiary/Halamanlistdetail.dart';
import 'package:onigiridiary/halamanlist.dart';
import 'package:onigiridiary/list.dart';
import 'package:onigiridiary/splashscreen.dart';

void main() => runApp(OnigiridiaryApp());

class OnigiridiaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print("Menampilkan widget.");
    // print(diaries[0].datepost + " " + diaries[0].note);
    return MaterialApp(
        title: "Onigiry Diary",
        // home: HalamanList()
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => HalamanList(),
        //   '/detail': (context) => HalamanListDetail(),
        // },

        onGenerateRoute: (settings) {
          //untuk '/'
          if (settings.name == '/') {
            return MaterialPageRoute(builder: (context) => Splashscreen());
          }

          //untuk '/home'
          if (settings.name == 'home') {
            return MaterialPageRoute(builder: (context) => ListGrid());
          }

          //untuk '/detail'
          var uri = Uri.parse(settings.name);
          if (uri.pathSegments.length == 2 &&
              uri.pathSegments.first == 'detail') {
            var id = uri.pathSegments[1];
            return MaterialPageRoute(
                builder: (context) => HalamanListDetail(id: int.tryParse(id)));
          }
          return MaterialPageRoute(builder: (context) => Container());
        });
  }
}
