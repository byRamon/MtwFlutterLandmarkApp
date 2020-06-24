import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CustomItems.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  final listPersonas = const [
    {'lugar':'Turtle Rock', 'imagen':'assets/turtlerock.jpg', 'favorite' : true},
    {'lugar':'Silver Salmon Creek', 'imagen':'assets/silversalmoncreek.jpg', 'favorite' : false},
    {'lugar':'Chilkoot Trail', 'imagen':'assets/chilkoottrail.jpg', 'favorite' : true},
    {'lugar':'St. Mary Lake', 'imagen':'assets/stmarylake.jpg', 'favorite' : true},
    {'lugar':'Lake McDonald', 'imagen':'assets/lakemcdonald.jpg', 'favorite' : false},
    {'lugar':'Charley Rivers', 'imagen':'assets/charleyrivers.jpg', 'favorite' : false},
    {'lugar':'Icey Bay', 'imagen':'assets/icybay.jpg', 'favorite' : false},
    {'lugar':'Rainbow Lake', 'imagen':'assets/rainbowlake.jpg', 'favorite' : false},
    {'lugar':'Hidden Lake', 'imagen':'assets/hiddenlake.jpg', 'favorite' : false},
    {'lugar':'Chincoteague', 'imagen':'assets/chilkoottrail.jpg', 'favorite' : false}];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
          //navigationBar: CupertinoNavigationBar( middle: Text('Cupertino App Bar'),),
          //child: Center( child: Container( child: Text('Hello World'),),),
          child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Landmarks'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return CustomItemList(titulo: listPersonas[index]['lugar'], image: listPersonas[index]['imagen'], favorite: listPersonas[index]['favorite'],);
            }, childCount: listPersonas.length),
          ),
        ],
        //SliverFillRemaining( child: Center(child: Text('Hola mundo')),)
      )),
    );
  }
}
