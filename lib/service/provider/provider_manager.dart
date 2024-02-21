import 'package:cloudhub/service/provider/page_change_provider.dart';
import 'package:flutter/material.dart';

class ProviderManager {
  static late PageChangeProvider pageChangeProvider;
  // static late Map<String,ChangeNotifier> providerMap;
  static void init(){
    pageChangeProvider = PageChangeProvider();
  }
}