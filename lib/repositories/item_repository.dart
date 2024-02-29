import 'package:gb_pos_store/models/models.dart';
import 'package:gb_pos_store/services/item_service.dart';
import 'dart:convert';

class ItemRepository {
  final ItemService _itemService;

  ItemRepository({required ItemService itemService})
      : _itemService = itemService;

  Future<Result<List<ItemList>>> search({
    required String course,
  }) async {
    var response = await _itemService.searchItem(params: 'param=$course');
    var body = jsonDecode(response.body);

    List searched = body['data'];
    return Result(
      // data: searched.map((e) => ItemList.fromJson(e)).toSet().toList(),
      statusCode: response.statusCode,
    );
  }
}
