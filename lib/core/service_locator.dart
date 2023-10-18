import '../domain/repository/product_repository.dart';
import '../service/http_service.dart';

late RepozitoryProduct repozitory;


void serviceLocator(){
  repozitory = RepozitoryProductImpl(network: HttpNetwork());
}