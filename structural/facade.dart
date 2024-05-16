class Motor {
  void calistir() {
    print("motor çalışıyor");
  }

  void durdur() {
    print("motor durduruldu");
  }
}

class Fren {
  void frenyap() {
    print("fren yapılıyor");
  }
}

class Isik {
  void isikac() {
    print("ışıklar açıldı");
  }

  void isikkapat() {
    print("ışıklar kapatıldı");
  }
}

class ArabaFacade {
  Motor? _motor;
  Fren? _fren;
  Isik? _isik;

  ArabaFacade() {
    _motor = Motor();
    _fren = Fren();
    _isik = Isik();
  }

  void arabayiCalistir() {
    _motor?.calistir();
    _isik?.isikac();
  }

  void arabayiDurdur() {
    _fren?.frenyap();
    _motor?.durdur();
    _isik?.isikkapat();
  }

}


void main(List<String> args) {
  var arabaFacade=ArabaFacade();
  arabaFacade.arabayiCalistir();
  arabaFacade.arabayiDurdur();
}

