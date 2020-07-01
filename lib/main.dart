import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:wer_bin_ich/View/AppPage.dart';
import 'package:wer_bin_ich/Model/WhoAmIModel.dart';

void main() {
  runApp(WhoAmI());
}

class WhoAmI extends StatefulWidget{

  @override
  State<StatefulWidget> createState()=> _WhoAmIState();
}

class _WhoAmIState extends State<WhoAmI> {
  WhoAmIModel model;

  @override
  Widget build(BuildContext context) {
    return ScopedModel<WhoAmIModel>(
        model: model,
        child: MaterialApp(
          title: 'Wer bin ich?',
          theme: ThemeData(
              primaryColor: Colors.pink[200]
          ),
          home: WhoAmIHome(),
        )
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    model = WhoAmIModel();
  }
  @override
  void dispose() {
    super.initState();
  }
}