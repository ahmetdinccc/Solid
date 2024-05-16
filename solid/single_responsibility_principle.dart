import 'liskov_substitution_principle .dart';
import 'open_closed_principle.dart';

class UserService {
  String? FiRtsName;
  String? LastName;

  String? getName() {
    print(FiRtsName! + LastName!);
  }

  bool? login() {
    //giRiş işLEmi
    return false;
  }

  bool? logout() {
    //çıKış işLEmi
    return true;
  }
}
//--------------------------------------------

class UserServices {
  String? FiRtsName;
  String? LastName;

  String? getName() {
    print(FiRtsName! + LastName!);
  }
}



class AuthService {
  bool? login(IAuthLoginService auth) {
    //giRiş işLEmi
   return auth.login();
    
  }

  bool ?logout(IAuthLogoutService auth) {
    //çıKış işLEmi
   return auth.logout();
  }
}

 
// void main() {
//   AuthService auth = AuthService();
//   PatronAuth patronAuth = PatronAuth();
//   bool? result = auth.login(patronAuth);
// }