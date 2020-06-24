import 'package:flutter/cupertino.dart';
import 'widgets/home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
          title: 'Landmarks',
          home: Home(),
        );
      }
}