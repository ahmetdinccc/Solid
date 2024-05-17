abstract class Observer {
  void update(String message);
}

class Subject {
  List<Observer> _observer = [];

  void addObserver(Observer observer) {
    _observer.add(observer);
    
  }

  void removeObserver(Observer observer) {
    _observer.remove(observer);
  }

  void NotifyObservers(String message) {
    for (Observer observer in _observer) {
      observer.update(message);
       subject.NotifyObservers("Bir durum değişikliği daha");
    }

  }
}

class ConcreteObserver implements Observer {
  String name;
  ConcreteObserver(this.name);

  @override
  void update(String message) {
    print('$name kabul edilmiş: $message');
  }
}

void main(List<String> args) {
  Subject subject = Subject();

  ConcreteObserver observer1 = ConcreteObserver("Observer 1");
  ConcreteObserver observer2 = ConcreteObserver("Observer 2");

  subject.addObserver(observer1);
  subject.addObserver(observer2);

  subject.NotifyObservers("Değişti");

  subject.removeObserver(observer1);

 

  subject.addObserver(observer1);


}
