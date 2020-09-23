import 'package:al_ma/core/service_locator/servicelocator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;
@injectableInit
void configureServicesSetup() => $initGetIt(locator);
