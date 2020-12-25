import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';

abstract class ConnectionCheck{
 Future<bool> get isConnect;
}

@Injectable(as: ConnectionCheck)
class ConnectionCheckImpl implements ConnectionCheck{
  @override
  // TODO: implement isConnect
  Future<bool> get isConnect async {
    var collectivity = await Connectivity().checkConnectivity();
    return (collectivity == ConnectivityResult.mobile || collectivity == ConnectivityResult.wifi);
  }


}