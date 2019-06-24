import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_course/services/owner.dart';

@Component(
  selector: 'cat',
  templateUrl: 'cat_component.html',
  styleUrls: [
  	'cat_component.css'
	],
)
class CatComponent{

	String imageUrl =
			"https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg";

  //final FoodProvider _foodProvider = new Owner(new Market());
	final FoodProvider _foodProvider;

	CatComponent(this._foodProvider);

	@Input()
  String name = 'Unknown';

  @Output()
  Stream<String> get onMeow => _onMeowController.stream;

  final StreamController<String> _onMeowController = new StreamController();

  void doMeowInConsole() {
    print(name + ' says Meow');
  }

  void doMeow() {
    _onMeowController.add(name + ' is meowing');
  }

  void giveMeFood(){
  	final foodPortions = 2;
  	final food = _foodProvider.feed(foodPortions);
  	_onMeowController.add('Mrr x${food} timer !!! ');
	}

}
