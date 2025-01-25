import 'package:get_it/get_it.dart';
import 'package:structor/features/auth/cubit/auth_cubit.dart';
import 'package:structor/features/home/cubit/home_cubit.dart';

import '../core/services/analytics_service.dart';
import '../core/services/logging_service.dart';
import '../core/services/notification_service.dart';
import '../core/services/preferences_service.dart';
import '../core/services/push_notification_service.dart';
import '../core/services/storage_service.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  // Register core services
  getIt.registerLazySingleton(() => NotificationService());
  getIt.registerLazySingleton(() => PreferencesService());
  getIt.registerLazySingleton(() => StorageService());
  getIt.registerLazySingleton(() => AnalyticsService());
  getIt.registerLazySingleton(() => PushNotificationService());
  getIt.registerLazySingleton(() => LoggingService());
  getIt.registerLazySingleton(() => HomeCubit());
  getIt.registerLazySingleton(() => AuthCubit());
}
