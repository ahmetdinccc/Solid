class Isik {
  String? _yer;
  Isik(this._yer);

  void ac() {
    print("${_yer} Işığı Açıldl");
  }

  void kapat() {
    print("${_yer} Işığı Kapatıldı");
  }
}

abstract class IsikKomut {
  void execute();
}

class IsikAcKomut implements IsikKomut {
  Isik? _isik;
  IsikAcKomut(this._isik);

  @override
  void execute() {
    _isik?.ac();
  }
}

class IsikKapatKomut implements IsikKomut {
  Isik? _isik;
  IsikKapatKomut(this._isik);

  @override
  void execute() {
    _isik?.kapat();
  }
}

class UzaktanKumanda {
  IsikKomut? _komut;

  void setKomut(IsikKomut komut) {
    _komut = komut;
  }

  void butonaBas() {
    _komut?.execute();
  }
}

void main(List<String> args) {
  final salonIsigi = Isik("Salon");

  final isikAcKomut = IsikAcKomut(salonIsigi);
  final isikKapatKomut = IsikKapatKomut(salonIsigi);

  final kumanda = UzaktanKumanda();

  kumanda.setKomut(isikAcKomut);
  kumanda.butonaBas();

  kumanda.setKomut(isikKapatKomut);
  kumanda.butonaBas();
}
