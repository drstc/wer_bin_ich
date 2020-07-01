import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:wer_bin_ich/Model/WhoAmIModel.dart';


class WhoAmIHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Was bin ich?'),
      ),
      body: ScopedModelDescendant<WhoAmIModel> (
          builder:
              (context, child, WhoAmIModel model) =>
              Column(
                  children: [
                    Expanded(
                    child: _WhoAmIWords(model),
                    ),
                  ]
              )
      )
        );
  }
}

class _WhoAmIWords extends StatelessWidget {
  final WhoAmIModel model;
  _WhoAmIWords(this.model);

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme
        .of(context)
        .textTheme
        .headline3;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(model.txt,
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    );
  }
}