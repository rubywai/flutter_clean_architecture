import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

abstract class ConnectionCheck{
 Future<bool> get isConnect;
}

@singleton
@Injectable(as: ConnectionCheck)
class ConnectionCheckImpl implements ConnectionCheck{
  final DataConnectionChecker connectionChecker;

  ConnectionCheckImpl(this.connectionChecker);

  @override
  Future<bool> get isConnect => connectionChecker.hasConnection;

}