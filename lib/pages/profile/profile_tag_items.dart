import 'package:flutter/material.dart';

class ProfileTagItems extends StatelessWidget {
  final String title;
  final List<String> items;

  ProfileTagItems(this.title, this.items);

  @override
  Widget build(BuildContext context) {
    List<Widget> tags =
        items.map((tagName) => _buildDecoratedBox(tagName)).toList();
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title),
        Row(children: tags, mainAxisAlignment: MainAxisAlignment.spaceAround)
      ],
    ));
  }

  DecoratedBox _buildDecoratedBox(String tagName) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          child: Text(tagName)),
    );
  }
}
