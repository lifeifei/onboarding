import 'package:flutter/material.dart';

class ProfileTextItem extends StatelessWidget {
  final String title;
  final String description;

  ProfileTextItem(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text(
            title,
            style: Theme.of(context).textTheme.subhead.copyWith(fontSize: 16.0),
          ),
          subtitle: Text(description,
              style: Theme.of(context)
                  .textTheme
                  .subhead
                  .copyWith(color: Colors.white)),
        ),
        Divider(
          height: 2,
          color: Colors.white,
        )
      ],
    );
  }
}

//child: Column(
//crossAxisAlignment: CrossAxisAlignment.start,
//children: <Widget>[
//Text(title),
//Text(description),
//Divider(color: Colors.white,)
//],
//),
