import 'package:http/http.dart';

class ItemService {
  final String baseUrl;
  const ItemService({required this.baseUrl});

  Future<Response> searchItem({required String? id}) {
    return get(
      Uri.parse('$baseUrl/products/$id'),
    );
  }
}
