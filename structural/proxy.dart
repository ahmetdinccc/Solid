abstract class BankaHesabi {
  void paraCek(int miktar);
  void paraYatir(int miktar);
}

class GercekBankaHesabi implements BankaHesabi {
  String? _musteriadi;
  int _bakiye = 0;

  GercekBankaHesabi(this._musteriadi);

  @override
  void paraCek(int miktar) {
    print("para çekildi");
  }

  @override
  void paraYatir(int miktar) {
    print("para yatırıldı");
  }
}
