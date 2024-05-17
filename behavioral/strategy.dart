abstract class SifrelemeAlgoritmasi {
  String sifrele(String metin);
}

class AESAlgoritmasi implements SifrelemeAlgoritmasi {
  @override
  String sifrele(String metin) {
    return "10000";
  }
}

class dncAlgoritmasi implements SifrelemeAlgoritmasi {
  @override
  String sifrele(String metin) {
    return "123456";
  }
}

class MetinSifreleme {
  SifrelemeAlgoritmasi _algoritma;

  MetinSifreleme(this._algoritma);

  String sifrele(String metin) {
    return _algoritma.sifrele(metin);
  }
}

void main(List<String> args) {
  MetinSifreleme sifrelemeAES = MetinSifreleme(AESAlgoritmasi());
  String sifrelimetinAES = sifrelemeAES.sifrele("");
 print("AES ile Şifreli Metin: $sifrelimetinAES");
  MetinSifreleme sifrelemednc = MetinSifreleme(dncAlgoritmasi());

  String sifreliMetinDnc = sifrelemednc.sifrele("");
  print("DNC ile Şifreli Metin: $sifreliMetinDnc");
}


