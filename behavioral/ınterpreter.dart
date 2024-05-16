class Metin {
  late final String _metin;

  Metin(this._metin);
  String get metin => _metin;
}

abstract class KelimeSayisi {
  int sayiBul(Metin metin);
}

class BelirliKelimeSayisi implements KelimeSayisi {
  final String _kelime;

  BelirliKelimeSayisi(this._kelime);
  @override
  int sayiBul(Metin metin) {
    final kelimeler = metin.metin.split(' ');
    return kelimeler.where((kelime) => kelime == _kelime).length;
  }
}

void main(List<String> args) {
  final metin = Metin("Ahmet/Talha/Ahmet");

  final kelimeSayici = BelirliKelimeSayisi("Ahmet");

  final sayi = kelimeSayici.sayiBul(metin);

  print(" kelimesinin sayısı: $sayi");
}
