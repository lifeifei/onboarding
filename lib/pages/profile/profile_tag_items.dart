import 'package:flutter/material.dart';

class ProfileTagItems extends StatelessWidget {
  final String title;
  final List<String> items;

  ProfileTagItems(this.title, this.items);

  @override
  Widget build(BuildContext context) {
    List<Widget> tags =
        items.map((tagName) => _buildDecoratedBox(context, tagName)).toList();
    return ListTile(
        contentPadding: EdgeInsets.all(0),
        title: Text(
          title,
          style: Theme.of(context).textTheme.subhead.copyWith(fontSize: 16.0),
        ),
        subtitle: Container(
          margin: EdgeInsets.only(top: 10.0),
            child: Row(
                children: tags, mainAxisAlignment: MainAxisAlignment.start)));
  }

  Container _buildDecoratedBox(BuildContext context, String tagName) {
    return Container(
        margin: EdgeInsets.only(right: 10.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              child: Text(tagName,
                  style: Theme.of(context)
                      .textTheme
                      .subhead
                      .copyWith(color: Colors.white))),
        ));
  }
}
