
import 'package:angular/angular.dart';
import 'package:angular_course/services/owner.dart';

@Component(
	selector: 'feeder',
	templateUrl: 'feeder.html',
)
class FeederComponent{
	final FoodProvider _foodProvider;

  FeederComponent(this._foodProvider);

  int get foodCount => _foodProvider.getStock();

}