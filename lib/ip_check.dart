//https://api.ipify.org
//https://ipapi.co/json
import "package:http/http.dart" as http; 
import "dart:convert";
import "models/ip.dart";

const url = "https://ipapi.co/json";

Future<Ip> getIP() async {
  final urlParse = Uri.parse(url);
  final response = await http.get(urlParse); 
  //Future è l'equivalente di una promise, non ho al suo interno il suo valore ORA, ma so che lo avrò in futuro. 
  //Per questo ho bisogni di indicare che ho necessità di avere dell'asincronicità, inserendo le keyword ASYNC AWAIT.

  final Map<String, dynamic> data = json.decode(response.body); 
  //dynamic è una tipologia di oggetto che può essere un po di tutto

  Ip res = Ip(ip:data['ip'],city:data['city'],postal:data['postal'],region:data['region']);
  return res;
}
