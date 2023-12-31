import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../cart/cubit_cart.dart';
import '../main.dart';
import '../pages/main_page.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartController>(create: (context)=> cartController),
        BlocProvider<CartRepozitory>(create: (context)=> cartRepozitory),
      ],
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        child: const MainPage(),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(useMaterial3: true),
            themeMode: ThemeMode.light,
            darkTheme: ThemeData.dark(useMaterial3: true),
            home: child,
          );
        },
      ),
    );
  }
}
