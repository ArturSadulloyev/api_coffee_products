import 'package:flutter/cupertino.dart';
import 'app.dart';
import 'cart/cubit_cart.dart';
import 'core/service_locator.dart';

final cartController = CartController();
final cartRepozitory = CartRepozitory();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();
  runApp(const App());
}
