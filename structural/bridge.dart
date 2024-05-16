abstract class Arac {
  Yakit yakit;
  Arac(this.yakit);
  void sur();
}

abstract class Yakit {
  void depo();
}

class Benzin implements Yakit {
  @override
  void depo() {
    print("Benzin Depoesu Dolduruluyor");
  }
}

class Dizel implements Yakit {
  @override
  void depo() {
    print("Dizel Deposu Dolduruluyor");
  }
}

class Elektrik implements Yakit {
  @override
  void depo() {
    print("Elektrik Deposu Dolduruluyor");
  }
}

class Araba extends Arac {
  Araba(Yakit yakit) : super(yakit);
  @override
  void sur() {
    print("Araba Çalıştı");
    yakit.depo();
  }
}

void main(List<String> args) {
  var benzinliAraba = Araba(Benzin());
  benzinliAraba.sur();

  var dizelAraba = Araba(Dizel());
  dizelAraba.sur();

  var elektrikliAraba = Araba(Elektrik());
  elektrikliAraba.sur();
}
