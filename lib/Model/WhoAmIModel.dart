import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'dart:math';
import 'package:shake/shake.dart';
import 'package:vibration/vibration.dart';

class WhoAmIModel extends Model {
 int punkte = 0;
  String txt = "Schüttel um das Spiel zu beginnen";
  var list = ['Wasser', 'Quiz', 'Flughafen', 'Vitamin', 'Fuchs', 'Regenschirmständer', 'Serienmörder',
    'Computer', 'Pizza', 'Autobus', 'Flasche', 'Schild', 'Welpe', 'Brille', 'Taschentuch', "Mutter", "Cedran",
    "Fortnite", "Terraria", "Höschen", "Gangster", "Autismus", "Spaghetti", "Chicken Nuggets", "LKW-Fahrer", "Autobahn", "Telefon", "Handtasche", "Kopfhörer", "Steckdose"];

 get getword{
   var rng = new Random();
   return list[rng.nextInt(30)];
 }

  WhoAmIModel(){
     ShakeDetector detector = ShakeDetector.autoStart(
         onPhoneShake: () {
           if (punkte < 15) {
             punkte++;
             txt = getword;
             notifyListeners();
           } else {
             txt = "Sie haben $punkte Punkte";
            Vibration.vibrate(duration: 1000);

           }
             notifyListeners();
         }
     );



  }

}