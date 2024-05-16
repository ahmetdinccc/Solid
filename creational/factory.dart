void main(List<String> args) {
  NotifiyFactory notifyFactory = NotifiyFactory();
  Notify? notify1 = notifyFactory.CreateNotify("mailss");
  Notify? notify2 = notifyFactory.CreateNotify("sms");

  if (notify1 != null || notify2 != null) {
    notify1?.SendNotification(User());
    notify2?.SendNotification(User());
  } else {
    print("Geçersiz bildirim türü");
  }
}

class User {}

abstract class Notify {
  void SendNotification(User user) {}
}

class MailNotify implements Notify {
  @override
  void SendNotification(User user) {
    print("mail gönderiliyor");
  }
}

class SmsNotify implements Notify { 
  @override
  void SendNotification(User user) {
    print("sms gönderiliyor");
  }
}

class NotifiyFactory { 

  Notify? CreateNotify(String notifyType) {
    if (notifyType == "sms") {
      return SmsNotify();
    } else if (notifyType == "mailss") {
      return MailNotify();
    }
    return null;
  }
}
