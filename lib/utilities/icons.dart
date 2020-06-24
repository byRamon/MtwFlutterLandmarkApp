import 'package:flutter/cupertino.dart';

final _icons = <String, IconData> {
  'star' : IconData(0xF4B2, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage),
  'starFilled' : IconData(0xF4B3, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage),
};
getCupertinoIconData(String key){
  return _icons[key];
}