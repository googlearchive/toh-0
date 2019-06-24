import 'package:angular/angular.dart';
import 'package:angular_course/components/cat_village/cat_village.dart';
import 'package:angular_course/components/feeder/feeder.dart';
import 'package:angular_course/modules/module.dart';

@Component(
    selector: 'my-app',
    //template: '<h1>Hello {{name}}</h1>',
    templateUrl: 'app_componenet.html',
    directives: [
      CatVillageComponent,
      FeederComponent,
    ],
    providers: [
      catvillModule,
    ])
class AppComponent {
  var name = 'CatVillage';
}

