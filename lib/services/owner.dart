class Owner implements FoodProvider, ToyPlayer{

	final Market _market;
	//int _portions = 0;
	int _portions;

  Owner(this._market, this._portions);

	int feed(int requestedPortions){
		if(_portions==0){
			_portions = _market.buyFood();
		}
		_portions -= requestedPortions;
		return requestedPortions;
	}

  @override
  void playToy() {
    // TODO: implement playToy
  }

  @override
  int getStock() {
    return _portions;
  }
}

abstract class FoodProvider{
	int feed(int requestedPortions);
	int getStock();
}

abstract class ToyPlayer{
	void playToy();
}

class Market{
	int buyFood(){
		return 10;
	}
}