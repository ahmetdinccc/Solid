abstract class Iterator {
  bool Next();
  next();
}

abstract class Aggregate {
  Iterator iterator();
}

class ListIterator implements Iterator {
  final List _liste;
  int _index = 0;

  ListIterator(this._liste);
  @override
  bool Next() {
    return _index < _liste.length;
  }

  @override
  next() {
    return _liste[_index++];
  }
}

class Liste implements Aggregate {
  final List _liste;

  Liste(this._liste);

  @override
  Iterator iterator() {
    return ListIterator(_liste);
  }
}

void main(List<String> args) {
  final liste = Liste([1, 2, 3, 4, 5]);

  final iterator = liste.iterator();

  while (iterator.Next()) {
    print(iterator.next());
  }
}
