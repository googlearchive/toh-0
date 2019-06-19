import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes/components/cat/cat_component.dart';

@Component(
	selector: 'cat-village',
	templateUrl: 'cat_village.html',
	styleUrls: ['cat_village.css'],
	directives: [
		NgFor,
		CatComponent,
	]
)

class CatVillageComponent implements OnInit, AfterViewInit {

	final List<String> catvillagelog = [];

	void onMeow(String meow){
		catvillagelog.add(meow);
	}

  @override
  void ngOnInit() {
		catvillagelog.add('ngOnInit');
  }

  @override
  void ngAfterViewInit() {
		catvillagelog.add('ngAfterViewInit');
  }
}