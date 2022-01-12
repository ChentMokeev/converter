import 'dart:io';
import 'converter.dart';

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
