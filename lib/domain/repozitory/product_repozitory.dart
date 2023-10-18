import 'dart:convert';
import '../../core/api.dart';
import '../../model/product_model.dart';
import '../../service/http_service.dart';

abstract class RepozitoryProduct{
  Future<List<Products>> fetchData();
}

class RepozitoryProductImpl implements RepozitoryProduct{
  final Network network;
  const RepozitoryProductImpl({required this.network});

  @override
  Future<List<Products>> fetchData() async{
     String response = await network.getMethod(baseUrl: Api.baseUrl,api: Api.apiProduct) ?? "[]";
     List list = jsonDecode(response);
     List<Products> product = list.map((e) => Products.fromJson(e)).toList();
  return product;
  }

}