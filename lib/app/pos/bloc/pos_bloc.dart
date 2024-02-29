import 'package:bloc/bloc.dart';
import 'package:gb_pos_store/app/pos/bloc/pos_event.dart';
import 'package:gb_pos_store/app/pos/bloc/pos_state/pos_state.dart';
import 'package:gb_pos_store/repositories/item_repository.dart';
import 'package:gb_pos_store/repositories/repositories.dart';
import 'package:meta/meta.dart';

class PosBloc extends Bloc<PosEvent, PosState> {
  final ItemRepository _itemRepository;
  PosBloc(
      {required PosState initialState, required ItemRepository itemRepository})
      : _itemRepository = itemRepository,
        super(initialState) {
    // on<SearchItem>((event, emit) {});
    on<SearchItem>(_searchItem);
  }

  Future<void> _searchItem(SearchItem event, Emitter<PosState> emit) async {
    emit(state.copyWith(searchInput: event.searchItem));
    // var result = await _itemRepository
  }
}
