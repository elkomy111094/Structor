import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structor/config/dependency_injection.dart';
import 'package:structor/config/routes.dart';
import 'package:structor/features/auth/cubit/auth_cubit.dart';
import 'package:structor/features/auth/presentation/login_screen.dart';
import 'package:structor/features/home/cubit/home_cubit.dart';
import 'package:structor/features/home/presentation/home_screen.dart';
import 'package:structor/shared/shared_exports.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (context) => getIt.get<AuthCubit>(),
        ),
        BlocProvider<HomeCubit>(
          create: (context) => getIt.get<HomeCubit>(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            title: 'Structor',
            theme: AppTheme.darkTheme,
            debugShowCheckedModeBanner: false,
            // حدد صفحة البداية هنا
            home: HomeScreen(), // استبدل HomeScreen بصفحتك الرئيسية
            // يمكنك استخدام المسارات إذا كنت تفضل ذلك
            routes: {
              AppRoutes.home: (context) => HomeScreen(),
              AppRoutes.login: (context) => LoginScreen(),
            },
          );
        },
      ),
    );
  }
}
