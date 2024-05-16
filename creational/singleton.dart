void main(List<String> args) {
  Singleton? Singleton1 = Singleton();
  Singleton? Singleton2 = Singleton();

  Singleton1.id = 10;

  print(Singleton2.id);

  if (Singleton1 == Singleton2) {
    print("Test");
  } else {
    print("null");
  }
}

class Singleton {
  int id = 0;
}
