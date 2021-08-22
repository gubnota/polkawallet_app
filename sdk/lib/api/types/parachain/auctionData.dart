import 'package:json_annotation/json_annotation.dart';
import 'package:polkawallet_sdk/api/types/parachain/bidData.dart';
import 'package:polkawallet_sdk/api/types/parachain/fundData.dart';

part 'auctionData.g.dart';

@JsonSerializable(explicitToJson: true)
class AuctionData extends _AuctionData {
  static AuctionData fromJson(Map json) => _$AuctionDataFromJson(json);
  Map toJson() => _$AuctionDataToJson(this);
}

abstract class _AuctionData {
  AuctionOverview auction;
  List<FundData> funds;
  List<BidData> winners;
}

@JsonSerializable()
class AuctionOverview extends _AuctionOverview {
  static AuctionOverview fromJson(Map json) => _$AuctionOverviewFromJson(json);
  Map toJson() => _$AuctionOverviewToJson(this);
}

abstract class _AuctionOverview {
  String bestNumber;
  String endBlock;
  int numAuctions;
  int leasePeriod;
  int leaseEnd;
}
