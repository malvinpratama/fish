import 'package:fishlog/models/product_response.dart';
import 'package:fishlog/repositories/product_repository.dart';
import 'package:rxdart/subjects.dart';

class ProductBloc {
  static final ProductBloc _instance = ProductBloc._internal();

  factory ProductBloc() => _instance;

  ProductBloc._internal() {
    getProduct();
  }

  final ProductRepository _productRepository = ProductRepository();

  final BehaviorSubject<int> _page = BehaviorSubject<int>.seeded(1);
  final PublishSubject<List<Product>> _productList =
      PublishSubject<List<Product>>();

  Stream<List<Product>> get listProduct => _productList.stream;

  Function(int) get getPage => _page.sink.add;

  getProduct() {
    _productRepository.fetchProduct(_page.value * 10).then((Catalog? catalog) {
      _productList.sink.add(catalog!.data!.product!);
    });
  }

  dispose() {
    _page.close();
  }
}
