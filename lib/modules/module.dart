import 'package:angular/angular.dart';
import 'package:angular_course/services/owner.dart';

const Object catvillModule = [
  ClassProvider(Market, useClass: Market),
  FactoryProvider(FoodProvider, createOwner, deps: [Market]),
];

FoodProvider createOwner(Market market) {
  return Owner(market, 20);
}