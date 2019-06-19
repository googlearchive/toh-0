import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes/components/cat_village/cat_village.dart';

@Component(
  selector: 'my-app',
  //template: '<h1>Hello {{name}}</h1>',
  templateUrl: 'app_componenet.html',
    directives: [
      CatVillageComponent,
    ]
)
class AppComponent {
  var name = 'Angular';
}


