import 'abstract_factory.dart';

class Araba {
  String? Marka;
  String? Model;
  int? UretimYili;

  Araba({required this.Marka, required this.Model, required this.UretimYili});

  Araba? Klon({
    String? Marka,
    String? Model,
    int? UretimYili,
  }) {
    return Araba(
        Marka: Marka ?? this.Marka,
        Model: Model ?? this.Model,
        UretimYili: UretimYili ?? this.UretimYili);
  }
}

void main(List<String> args) {
  final Araba PrototipAraba1 =
      Araba(Marka: "Renault", Model: "Fluence", UretimYili: 2016);
  final Araba? PrototipAraba2 = PrototipAraba1.Klon(UretimYili: 2013);

  print(
      "ana Araba =  ${PrototipAraba1?.Marka} - ${PrototipAraba1?.Model} -  ${PrototipAraba1?.UretimYili}");

  print(
      "Araba Klon=  ${PrototipAraba2?.Marka} - ${PrototipAraba2?.Model} -  ${PrototipAraba2?.UretimYili}");

  print("-------------");

  final Car car1 = Car(id: 1, name: "citroen", yil: "2024");
  final Car car2 = car1.copyWith(id: 2);
  final Car car3 = Car(id: 3, name: "Ford", yil: "2020");
  final Car car4 = car3.copyWith(id: 4);

  print("${car1.id} - ${car1.name} - ${car1.yil}");

  print("${car2.id} - ${car2.name} - ${car2.yil}");
  print("-------------");

  print("${car3.id} - ${car3.name} - ${car3.yil}");
  print("${car4.id} - ${car4.name} - ${car4.yil}");
}

class Car {
  final int id;
  final String name;
  final String yil;

  const Car({required this.id, required this.name, required this.yil});

  Car copyWith({int? id, String? name, String? yil}) {
    return Car(
      id: id ?? this.id,
      name: name ?? this.name,
      yil: yil ?? this.yil,
    );
  }
}
