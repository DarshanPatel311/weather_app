import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:weather_app/helper_class/Api_services.dart';
import 'package:weather_app/view/Home_Screen/home_screen.dart';

class WeatherProvider extends ChangeNotifier{
  Map data={};
  bool isLoding=true;

  WeatherProvider(){
    fatchData('$name');

  }
  Future<void> fatchData(String city) async {
    isLoding=true;
    notifyListeners();
    String? json= await ApiServices().apicalling(city);
    if(json!= null){
      data=jsonDecode(json);

    }
    isLoding=false;

  }
  void namecall(){
    name=txtcity.text;
    notifyListeners();


  }





}