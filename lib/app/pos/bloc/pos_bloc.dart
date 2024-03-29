// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:gb_pos_store/app/pos/bloc/pos_event.dart';
import 'package:gb_pos_store/app/pos/bloc/pos_state/pos_state.dart';
import 'package:gb_pos_store/models/result/result.dart';
import 'package:gb_pos_store/repositories/item_repository.dart';
import 'package:gb_pos_store/repositories/repositories.dart';

class PosBloc extends Bloc<PosEvent, PosState> {
  final ItemRepository _itemRepository;
  PosBloc(
      {required PosState initialState, required ItemRepository itemRepository})
      : _itemRepository = itemRepository,
        super(initialState) {
    on<SearchItem>(_searchItem);
  }

  Future<void> _searchItem(SearchItem event, Emitter<PosState> emit) async {
    emit(state.copyWith(searchInput: event.searchItem));
    // print('event: ${event.searchItem}');
    var result = await _itemRepository.search(id: event.searchItem);
    print('here ${result.data}');
    switch (result.resultStatus) {
      case ResultStatus.success:
        var goods = result.data;
        if (goods != null) {
          // emit(state.copyWith(goods: result.data));
          emit(state.copyWith(goods: [
            ...(state.goods ?? []), // Add existing goods if they exist
            if (result.data != null)
              result.data!, // Add result.data if it's not null
          ]));
          emit(state.copyWith(searchInput: ''));
        }
      case ResultStatus.error:
        emit(
          state.copyWith(
            requestStatus: RequestStatus.failure,
            // message: 'Error',
          ),
        );
      case ResultStatus.none:
    }
  }
}
