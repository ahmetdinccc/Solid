class MetinEditoru {
  late String _metin;

  void metinYaz(String yeniMetin) {
    _metin = yeniMetin;
  }

  String? metniAl() {
    return _metin;
  }

  MetinMemento kaydet() {
    return MetinMemento(_metin);
  }

  void geriYukle(MetinMemento memento) {
    _metin = memento.metniGetir();
  }
}
//flutter

class MetinMemento {
  final String _metin;

  MetinMemento(this._metin);

  String metniGetir() {
    return _metin;
  }
}

class MetinEditoruYonetici {
  late MetinMemento _memento;

  void mementoKaydet(MetinMemento memento) {
    _memento = memento;
  }

  MetinMemento mementoGetir() {
    return _memento;
  }
}

void main(List<String> args) {
  final editor = MetinEditoru();
  final yonetici = MetinEditoruYonetici();

  editor.metinYaz("Flutter");

  yonetici.mementoKaydet(editor.kaydet());

  editor.metinYaz("C#.");

  editor.geriYukle(yonetici.mementoGetir());

  print("Geri yüklenen metin: ${editor.metniAl()}");
}
