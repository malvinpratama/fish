import 'package:fishlog/models/product_response.dart';
import 'package:http/http.dart';

class ProductRepository {
  final Client _client = Client();
  Future<Catalog?> fetchProduct(perPage) async {
    final _url = Uri.parse(
        'https://marketdevb2bbe.fishlog.co.id/api/cat/product?page=1&per_page=$perPage');
    return await _client.get(_url).then((Response value) {
      if (value.statusCode == 200) {
        final decode = catalogFromJson(value.body);
        return decode;
      }
      return null;
    }).onError((error, stackTrace) {
      throw Exception("Internal Server Error");
    });
  }
}
