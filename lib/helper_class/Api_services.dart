
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/view/Home_Screen/home_screen.dart';

class ApiServices{

  Future<String?> apicalling(String city) async {
  String Api="http://api.weatherapi.com/v1/current.json?key=152de5c9f9dd495e9f034721242006&q=$name";

 Response response = await http.get(Uri.parse(Api));


 if (response.statusCode==200){
   return response.body;
 }
 return null;

  }



}

// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';
//
// class ApiServices {
//   Future<String?> apicalling(String city) async {
//     String api = "http://api.weatherapi.com/v1/current.json?key=152de5c9f9dd495e9f034721242006&q=$city";
//
//     try {
//       Response response = await http.get(Uri.parse(api));
//
//       if (response.statusCode == 200) {
//         return response.body;
//       } else {
//         // Handle different status codes here
//         print('Failed to load weather data. Status code: ${response.statusCode}');
//       }
//     } catch (error) {
//       // Handle errors here
//       print('Error fetching weather data: $error');
//     }
//     return null;
//   }
// }
