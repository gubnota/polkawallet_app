import 'package:polkawallet_sdk/api/api.dart';
import 'package:polkawallet_sdk/api/types/parachain/auctionData.dart';
import 'package:polkawallet_sdk/service/parachain.dart';

class ApiParachain {
  ApiParachain(this.apiRoot, this.service);

  final PolkawalletApi apiRoot;
  final ServiceParachain service;

  Future<AuctionData> queryAuctionWithWinners() async {
    final res = await service.queryAuctionWithWinners();
    return AuctionData.fromJson(res);
  }

  Future<String> queryUserContributions(String paraId, String pubKey) async {
    return service.queryUserContributions(paraId, pubKey);
  }
}
