import 'food.dart';

class cafe{
  String name;
  String desc;
  String logourl;

  cafe(this.name,this.desc,this.logourl);

  static cafe cafeName(){
    return cafe(
        'SAP Cafetaria',
        'Delicious meals await for you!!',
        'assets/images/logo.png',
      
      );
  }

}