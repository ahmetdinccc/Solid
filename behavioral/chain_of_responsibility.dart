class KrediBasvurusu {
  final double miktar;
  KrediBasvurusu(this.miktar);
}

abstract class KrediIsleyici {
  KrediIsleyici? _sonraki;
  void setSonraki(KrediIsleyici sonraki) {
    _sonraki = sonraki;
  }

  void krediOnayla(KrediBasvurusu basvuru);
}

class KrediOnaylayan extends KrediIsleyici {
  @override
  void krediOnayla(KrediBasvurusu basvuru) {
    if (basvuru.miktar <= 10000) {
      print("Kredi Onaylandı: ${basvuru.miktar}");
    } else {
      _sonraki!.krediOnayla(basvuru);
    }
  }
}

class YuksekMiktarOnaylayan extends KrediIsleyici {
  @override
  void krediOnayla(KrediBasvurusu basvuru) {
    if (basvuru.miktar > 10000 && basvuru.miktar <= 50000) {
      print("Yüksek miktarlı kredi onaylandi: ${basvuru.miktar}");
    } else {
      _sonraki!.krediOnayla(basvuru);
    }
  }
}

class KrediReddeden extends KrediIsleyici {
  @override
  void krediOnayla(KrediBasvurusu basvuru) {
    print("Kredi reddedildi: ${basvuru.miktar}");
  }
}

void main(List<String> args) {
  final kredionaylayan = KrediOnaylayan();
  final yuksekmiktaronaylayan = YuksekMiktarOnaylayan();
  final kredireddeden = KrediReddeden();

  kredionaylayan.setSonraki(yuksekmiktaronaylayan);
  yuksekmiktaronaylayan.setSonraki(kredireddeden);

  final kredibasvuru1 = KrediBasvurusu(10000);
  final kredibasvuru2 = KrediBasvurusu(50000);
  final kredibasvuru3 = KrediBasvurusu(70000);

  kredionaylayan.krediOnayla(kredibasvuru1);
  kredionaylayan.krediOnayla(kredibasvuru2);
  kredionaylayan.krediOnayla(kredibasvuru3);
}
