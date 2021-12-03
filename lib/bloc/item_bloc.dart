import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktika3/bloc/item_event.dart';
import 'package:praktika3/bloc/item_state.dart';
import 'package:praktika3/model/controller.dart';

class ItemBloc extends Bloc<ItemSelectedEvent, ItemSelectedState> {
  @override
  ItemSelectedState get initialState => ItemSelectedState(controllers, 0);

  @override
  Stream<ItemSelectedState> mapEventToState(ItemSelectedEvent event) async* {
    List<Item> items;
    print(event.index);
    switch (event.index) {
      case 0: //Load controllers
        items = controllers;
        break;
      case 1: //game screens
        items = gamescreens;
        break;
      case 2: //load gaming mice
        items = mice;
        break;
    }
    //yield state with specific details
    yield ItemSelectedState(items, event.index);
  }
}