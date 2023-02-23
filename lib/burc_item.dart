import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_detay.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listenenBurc;
  const BurcItem({required this.listenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(4),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(4),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BurcDetay(secilenBurc: listenenBurc),
              ));
            },
            leading: Image.asset(
              "images/" + listenenBurc.burcKucukResim,
            ),
            title: Text(
              listenenBurc.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listenenBurc.burcTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
