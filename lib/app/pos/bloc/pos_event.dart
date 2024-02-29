abstract class PosEvent {
  const PosEvent();
}

class SearchItem extends PosEvent {
  final String searchItem;
  const SearchItem(this.searchItem);
}
