// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    Home.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomeScreen());
    },
    Login.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginScreen());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/login', fullMatch: true),
        RouteConfig(Home.name, path: '/home'),
        RouteConfig(Login.name, path: '/login')
      ];
}

/// generated route for
/// [HomeScreen]
class Home extends PageRouteInfo<void> {
  const Home() : super(Home.name, path: '/home');

  static const String name = 'Home';
}

/// generated route for
/// [LoginScreen]
class Login extends PageRouteInfo<void> {
  const Login() : super(Login.name, path: '/login');

  static const String name = 'Login';
}
