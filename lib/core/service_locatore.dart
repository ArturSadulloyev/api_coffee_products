import '../domain/repozitory/product_repozitory.dart';
import '../service/http_service.dart';

late RepozitoryProduct repozitory;


void serviceLocator(){
  repozitory = RepozitoryProductImpl(network: HttpNetwork());
}