
import 'currencies.dart';
import 'scoreBoard.dart';

void main() {
  var currencies = createCurrencies();
  scoreBoard(currencies);
  currencies.selectExchange();
}

