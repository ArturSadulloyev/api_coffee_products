import 'package:flutter/cupertino.dart';
import 'app.dart';
import 'cart/cart_cubit.dart';
import 'core/service_locatore.dart';

final cartController = CartController();
final cartRepozitory = CartRepozitory();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();
  runApp(const App());
}
