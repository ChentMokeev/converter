import 'dart:io';

mixin Currencies {
  num US = 84.80;
  num EU = 96.15;
  num RU = 1.13;
  num RK = 0.19;
}

class createCurrencies extends Converter with Currencies {
  selectExchange() {
    print('1) Хотите обменять другую валюту на сом?');
    print('2) Хотите обменять сом на другую валюту?');
    var x = int.parse(stdin.readLineSync()!);
    x == 1
        ? anotherToSom()
        : x == 2
            ? somToAnother()
            : print('err');
  }
}

class Converter with Currencies {
  anotherToSom() {
    num res = 0;
    print('Введите валюту:');
    print('USD \n EUR \n RUB \n KZT');
    var inp = stdin.readLineSync()!;
    switch (inp) {
      case 'EUR':
        res = readNum() * this.EU;
        break;
      case 'RUB':
        res = readNum() * this.RU;
        break;
      case 'USD':
        res = readNum() * this.US;
        break;
      case 'KZT':
        res = readNum() * this.RK;
        break;
      default:
        print('Нет такой валюты');
    }
    return res;
  }

  somToAnother() {
    print('Введите в какую валюту:');
    print('USD \n EUR \n RUB \n KZT');
    var inp = stdin.readLineSync()!;
    switch (inp) {
      case 'EUR':
        readNum() * this.EU;
        break;
      case 'RUB':
        readNum() * this.RU;
        break;
      case 'USD':
        readNum() * this.US;
        break;
      case 'KZT':
        readNum() * this.RK;
        break;
      default:
    }
  }
}

readNum() {
  print('Ввод: ');
  var x = int.parse(stdin.readLineSync()!);
  return x;
}
