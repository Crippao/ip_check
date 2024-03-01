class Ip {
  String ip;
  String city;
  String postal;
  String region;

  //In una classe il costruttore DEVE esserci
  Ip ({required this.ip, required this.city, required this.postal, required this.region});

  @override
  String toString() {
    String ipString = "My ip is $ip, I'm in this city $city, My postal code $postal, My region $region";  
    return ipString;
  }}