import 'package:countries/data/models/Country.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountryWidget extends StatelessWidget {
  final Country country;

  CountryWidget(this.country);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).accentColor,
            child: Text(
              country.name.substring(0, 1),
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          title: Text(
            country.name,
            style: Theme.of(context).textTheme.title,
          ),
          subtitle: Text(
            country.nativeName,
            style: Theme.of(context).textTheme.subtitle,
          ),
          trailing: Icon(
            CupertinoIcons.forward,
            color: Theme.of(context).accentColor,
          ),
        ),
        Divider()
      ],
    );
  }
}
