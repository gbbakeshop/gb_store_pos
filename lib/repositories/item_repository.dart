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
    print('Raw JSON Response: ${response.body}');

    var body = jsonDecode(response.body);
    // Check the status in the response
    // var status = body['status'];
    // print('status $status');
    // var goods = Goods.fromJson(body['data']);
    // print('Deserialized Goods: $goods');
    // var goods = Goods.fromJson(body);
    // print('Goods Object: $goods');
    return Result(
      data: Goods.fromJson(body['data']),
      statusCode: response.statusCode,
    );
  }
}
