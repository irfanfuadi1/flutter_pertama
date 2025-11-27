import 'package:flutter_bloc/flutter_bloc.dart';

class ItemState {
  final List<String> items;
  final List<bool> favorites;

  ItemState({required this.items, required this.favorites});

  ItemState copyWith({List<String>? items, List<bool>? favorites}) {
    return ItemState(
      items: items ?? this.items,
      favorites: favorites ?? this.favorites,
    );
  }
}

class ItemCubit extends Cubit<ItemState> {
  ItemCubit()
    : super(
        ItemState(
          items: ["Item 1", "Item 2", "Item 3"],
          favorites: [false, false, false],
        ),
      );

  void addItem() {
    final newItems = List<String>.from(state.items)..add("New Item");
    final newFavs = List<bool>.from(state.favorites)..add(false);

    emit(state.copyWith(items: newItems, favorites: newFavs));
  }

  void deleteItem(int index) {
    final newItems = List<String>.from(state.items)..removeAt(index);
    final newFavs = List<bool>.from(state.favorites)..removeAt(index);

    emit(state.copyWith(items: newItems, favorites: newFavs));
  }

  void toggleFavorite(int index) {
    final newFavs = List<bool>.from(state.favorites);
    newFavs[index] = !newFavs[index];

    emit(state.copyWith(favorites: newFavs));
  }
}
