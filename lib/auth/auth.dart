import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final FlutterAppAuth appAuth = FlutterAppAuth();
final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

const auth0Domain = 'dev-pa-v91vc.us.auth0.com';
const auth0ClientId = 'kwyIeu3BYZN4vcuZfd0ZAixsL4TcYhiy';

const auth0RedirectUri =
    'com.auth0.miller-makes-and-innovates://login-callback';
const auth0Issuer = 'https://$auth0Domain';
