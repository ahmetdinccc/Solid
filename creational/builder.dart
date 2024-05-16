class Ders {
  int? id;
  String? ad;
  int? dersNotu;

  Ders({this.id, this.ad, this.dersNotu});
}

abstract class DersBuilder {
  Ders? ders;

  void dersAl();
  void dersNotuEkle();
  Ders sonucAl();
}

class OgrenciDers implements DersBuilder {
  Ders? ders;

  @override
  void dersAl() {
    ders = Ders();
    ders!.id = 1;
    ders!.ad = "Türkçe";
  }

  @override
  void dersNotuEkle() {
    ders!.dersNotu = 100;
  }

  @override
  Ders sonucAl() {
    return ders!;
  }
}

class DersDirektoru {
  DersBuilder dersBuilder;

  DersDirektoru(this.dersBuilder);

  void yapmak() {
    dersBuilder.dersAl();
    dersBuilder.dersNotuEkle();
  }
}

void main() {
  DersBuilder dersBuilder = OgrenciDers();
  DersDirektoru dersDirektoru = DersDirektoru(dersBuilder);

  dersDirektoru.yapmak();

  Ders ders = dersBuilder.sonucAl();
  print("${ders.ad}-${ders.dersNotu}");
}
