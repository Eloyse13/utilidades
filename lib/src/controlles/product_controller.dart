import 'package:flutter/widgets.dart';
import 'package:utilizades/services/product_service.dart';
import 'package:utilizades/src/models/product_model.dart';

class ProductController {
  final ProductController  _servise = ProductService();

  Future<List<ProductModel>> fetchProdutos(BuildContext context) => _servise.getAll(context);
  Future<void> criarProduto(ProductModel produto) => _servise.create(produto);
  Future<void> atualizarProduto(ProductModel produto) => _servise.update(produto);
  Future<void> deletarProduto(int id) => _servise.delete(id);
  

  
}