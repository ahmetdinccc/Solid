abstract class IAuthService {
  bool? login() {}
  bool? logout() {}
}

class DoktorAuth implements IAuthService {
  bool? login() {
    //müŞTeri giRiş iŞLEmi
     return null;
  }
  bool? logout() {
    //müSTeri çıKış iŞLEmi
     return null;
  }
}

class YazIlImcIAuth implements IAuthService {
  bool? login() {
    //müŞTeri giRiş iŞLEmi
     return null;
  }

  //çıKış iŞLEmiNİ kUllAnMıYor
}

//------------------------------------------------

interface class IAuthLoginService {
  bool? login() { return null;}
}

interface class IAuthLogoutService {
  bool? logout() { return null;}
}

class PolisAuth implements IAuthLoginService, IAuthLogoutService {
  @override
  bool? login() { return null;}

  @override
  bool? logout() { return null;}
}

class PatronAuth implements IAuthLoginService {
  @override
  bool? login() {
    return null;
  }
}
