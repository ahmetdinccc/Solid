abstract class MesajMediator {
  void gonder(String mesaj, Kullanici gonderen);
}

class MesajServisi implements MesajMediator {
  final List<Kullanici> _kullanicilar = [];

  @override
  void gonder(String mesaj, Kullanici gonderen) {
    for (var kullanici in _kullanicilar) {
      if (kullanici != gonderen) {
        kullanici.mesajAl(mesaj);
      }
    }
  }

  void kullaniciEkle(Kullanici kullanici) {
    _kullanicilar.add(kullanici);
  }
}

class Kullanici {
  final String _isim;
  final MesajMediator _mediator;

  Kullanici(this._isim, this._mediator);

  void mesajGonder(String mesaj) {
    print("$_isim: $mesaj");
    _mediator.gonder(mesaj, this);
  }

  void mesajAl(String mesaj) {
    print("$_isim mesaj aldı: $mesaj");
  }
}

void main() {
  final mediator = MesajServisi();

  final kullanici1 = Kullanici("Ahmet", mediator);
  final kullanici2 = Kullanici("Mehmet", mediator);
  final kullanici3 = Kullanici("Ali", mediator);

  mediator.kullaniciEkle(kullanici1);
  mediator.kullaniciEkle(kullanici2);
  mediator.kullaniciEkle(kullanici3);

  kullanici1.mesajGonder("Merhaba, nasılsınız?");
  kullanici2.mesajGonder("İyiyim, teşekkürler.");
}
