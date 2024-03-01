//creazione automatica di una classe che ci metterà a disposizione tutti i metodi nel file in lib
import 'package:ip_check/ip_check.dart' as ip_check; 

void main(List<String> arguments) async {
  final ip = await ip_check.getIP();
  print(ip);
}