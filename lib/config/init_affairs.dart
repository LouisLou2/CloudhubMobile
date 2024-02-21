import 'package:cloudhub/config/test_device.dart';
import 'package:cloudhub/service/provider/provider_manager.dart';

Future<void> initAsync() async{

}
void initMustBeforeRunApp(){
  ProviderManager.init();
  TestDeviceCollection.init();
}