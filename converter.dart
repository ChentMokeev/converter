import 'dart:io';
import 'currencies.dart';

class Converter with Currencies {
    num res = 0;
  anotherToSom() {
    print('Введите валюту:');
    print('USD \n EUR \n RUB \n KZT');
    var inp = stdin.readLineSync()!.toUpperCase();
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
    print(res);
  }

  somToAnother() {
    print('Введите сумму:');
    var inpNum = num.parse(stdin.readLineSync()!);
    print('В какую валюту перевести?:');
    var inp = stdin.readLineSync()!.toUpperCase();
    switch (inp) {
      case 'EUR':
        res = inpNum / this.EU;
        break;
      case 'RUB':
        res = inpNum / this.RU;
        break;
      case 'USD':
        res = inpNum / this.US;
        break;
      case 'KZT':
        res = inpNum / this.RK;
        break;
      default:
        print('Нет такой валюты');
    }
    print(res);
  }
}

readNum() {
  print('Ввод: ');
  var x = int.parse(stdin.readLineSync()!);
  return x;
}
