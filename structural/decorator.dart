abstract class Araba {
  String tanim();
}

class TemelAraba implements Araba {
  @override
  String tanim() {
    return "Ford";
  }
}

abstract class ArabaDecorator implements Araba {
  Araba _araba;
  ArabaDecorator(this._araba);

  @override
  String tanim() {
    return _araba.tanim();
  }
}

class MultiMedya extends ArabaDecorator {
  MultiMedya(Araba araba) : super(araba);
  @override
  String tanim() {
    return super.tanim() + " Markalı Araç MultiMedya ile desteklendi";
  }
}

void main(List<String> args) {
  Araba temelaraba = TemelAraba();
  print(temelaraba.tanim());

  print("-----------------------");

  Araba multimedya = MultiMedya(temelaraba);
  print(multimedya.tanim());
}
