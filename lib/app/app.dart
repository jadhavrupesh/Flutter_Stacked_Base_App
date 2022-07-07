import 'package:flutter_base/api/api_service.dart';
import 'package:flutter_base/ui/Details/details_view.dart';
import 'package:flutter_base/ui/Home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: DetailsView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ApiService),
  ],
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
