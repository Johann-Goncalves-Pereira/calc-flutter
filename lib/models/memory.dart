class Memory {
  String _value = "0";

  void applyCommand(String command) {
    if (command == 'AC') {
      _allClear();
    } else {
      _value += command;
    }
  }

  _allClear() {
    _value = "";
  }

  String get velue {
    return _value;
  }
}
