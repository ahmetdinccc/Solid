class AuthService {
  bool? login(String LoginType) {
//giRiş işLeMleRi iÇin konTroller sağLaNIYor
    if (LoginType == "TeRzi") {
    } else if (LoginType == "ÖğrETmen") {
      
    } else if (LoginType == "KaSİYer") {}
    return true;
  }
  

  bool? logout() {
//çıKış işLEmi
  }
}

//-------------------------------

abstract class IAuthService {
  bool? login() {}
  bool? logout() {}
}

class TerziAuth implements IAuthService {
  bool? login() {
    //müŞTeri giRiş iŞLEmi
  }
  bool? logout() {
    //müSTeri çıKış iŞLEmi
  }
}



class OgretmenAuth implements IAuthService {
  bool? login() {
    // OgRETmen giRiş iŞLEmi
  }
  bool? logout() {
    // OgRETmen çıKış iŞLEmi
  }
}



class KasiyerAuth implements IAuthService {
  bool? login() {
    //KaSİyer giRiş iŞLEmi
  }
  bool? logout() {
    //KaSİyer çıKış iŞLEmi
  }
}