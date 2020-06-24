import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landmarks_app/utilities/icons.dart';

class CustomItemList extends StatelessWidget {
  const CustomItemList({Key key, this.titulo, this.image, this.favorite}) : super(key: key);

  final String titulo;
  final String image;
  final bool favorite;

  @override
  Widget build(BuildContext context) {
    print('$titulo, $image ');
    return ListTile(
                leading: Image(image: AssetImage('$image'), ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('$titulo'),
                    Icon((favorite ? getCupertinoIconData('starFilled') : null), color: CupertinoColors.systemYellow)
                  ],
                ),
                trailing: Icon(CupertinoIcons.right_chevron),
              );
  }
}