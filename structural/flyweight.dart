class Araba {
  String? Model;

  Araba(this.Model);

  void Detay(String renk, int fiyat) {
    print("Model: ${Model}, Renk: ${renk} , Fiyat: ${fiyat}");
  }
}

class ArabaFabrikasi {
  Map<String, Araba> _arabalar = {};

  Araba? getAraba(String Model) {
    return _arabalar.putIfAbsent(Model, () => Araba(Model));
  }

  int? toplamArabaSayisi() {
    return _arabalar.length;
  }
}

void main(List<String> args) {
  var arabaFabrikasi = ArabaFabrikasi();

  var araba1 = arabaFabrikasi.getAraba("Toyota Coralla");
  var araba2 = arabaFabrikasi.getAraba("Toyota Coralla");
  var araba3 = arabaFabrikasi.getAraba("Citroen Ami");

  araba1?.Detay("Siyah", 300000);
  araba2?.Detay("Beyaz", 300000);
  araba3?.Detay("mavi", 300000);

  print("Toplam Araba Sayısı: ${arabaFabrikasi.toplamArabaSayisi()}");
}
