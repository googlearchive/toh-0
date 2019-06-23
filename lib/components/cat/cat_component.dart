import 'dart:async';

import 'package:angular/angular.dart';

@Component(
  selector: 'cat',
  templateUrl: 'cat_component.html',
  styleUrls: ['cat_component.css'],
)
class CatComponent {
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

  String imageUrl =
      "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg";
}
