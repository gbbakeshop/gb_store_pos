import 'package:gb_pos_store/models/models.dart';
import 'package:gb_pos_store/services/item_service.dart';
import 'dart:convert';

class ItemRepository {
  final ItemService _itemService;

  ItemRepository({required ItemService itemService})
      : _itemService = itemService;

  Future<Result<Goods>> search({
    required String id,
  }) async {
    var response = await _itemService.searchItem(id: id);
    var body = jsonDecode(response.body);
    print('Response Body: $body');

    // Check the status in the response
    var status = body['status'];
    print('status $status');

    var goods = Goods.fromJson(body);
    print('Goods Object: $goods');
    return Result(
      data: Goods.fromJson(body),
      statusCode: response.statusCode,
    );
  }
}
