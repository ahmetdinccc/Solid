class SeniorSoftware {
  JuniorSoftware? juniorsoftware;

  void revize() {
    String? SeniorRevize = juniorsoftware?.Start();
  }
}

class JuniorSoftware {
  String? Start() {
    return "kodları revize et";
  }

}

//------------------------------------------------------//

abstract class Software {
  String? Startt() {
    
  }
}


class JuniorSoftwares  {
  @override
  String? Startt() {
    return "juniorsoftware reVİze düZeLTmeLeRi yapIYor";
  }
}

class SeniorSoftwarese {
  @override
  String? Startt() {
    return " SeniorSoftwares düZeLTmeLeRi yapIYor";
  }
}

class Patron {
  SeniorSoftwarese? soFTware;
  JuniorSoftwares? sssoff;

  Patron(this.soFTware);

  @override
  String? Revize() {
    String? softwareStart = soFTware?.Startt();
  }
}


// void main(List<String> args) {
//   Patron(SeniorSoftwarese());
// }