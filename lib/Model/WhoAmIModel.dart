import 'package:scoped_model/scoped_model.dart';
import 'dart:math';
import 'package:shake/shake.dart';
import 'dart:async';

class WhoAmIModel extends Model {
 int punkte =0;
  String txt = "Schüttel um das Spiel zu beginnen";
  var list = ['Wasser', 'Quiz', 'Flughafen', 'Vitamin', 'Fuchs', 'Regenschirmständer', 'Serienmörder', 'Computer', 'Pizza', 'Autobus', 'Flasche', 'Schild', 'Welpe', 'Brille', 'Taschentuch'];

 get getword{
   var rng = new Random();
   return list[rng.nextInt(16)];
 }

  WhoAmIModel(){
     ShakeDetector detector = ShakeDetector.autoStart(
        onPhoneShake: () {
        punkte++;
        txt = getword;
        notifyListeners();
        }
      );

  }

}