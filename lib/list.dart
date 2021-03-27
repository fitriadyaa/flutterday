import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ListGrid extends StatelessWidget {
  const ListGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List & Grid"),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: ListView(physics: BouncingScrollPhysics(), children: [
        Container(
          padding: EdgeInsets.all(16),
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.cyan,
                ),
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[100],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[200],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[400],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[500],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[600],
                  ),
                ],
              )
            ],
          ),
        )
      ])),
    );
  }
}
