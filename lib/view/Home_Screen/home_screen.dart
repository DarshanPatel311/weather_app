import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/helper_class/Api_services.dart';
import 'package:weather_app/provider/wether_provider.dart';
TextEditingController txtcity=TextEditingController();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherProvider ProviderTrue=Provider.of<WeatherProvider>(context);
    WeatherProvider ProviderFalse=Provider.of<WeatherProvider>(context,listen: false);
    return Scaffold(

      appBar: AppBar(
        title: TextField(
          controller: txtcity,


        ),
        actions: [
          IconButton(onPressed: () {
           ProviderFalse.namecall();




          }, icon: Icon(Icons.search_rounded))
        ],


      ),
      body: (ProviderTrue.isLoding)?CircularProgressIndicator():Column(
        children: [
          Text('${ProviderTrue.data["location"]["name"]}')
        ],
      ),
    );
  }
}
String? name;