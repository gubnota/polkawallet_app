import 'package:json_annotation/json_annotation.dart';

part 'fundData.g.dart';

@JsonSerializable()
class FundData extends _FundData {
  static FundData fromJson(Map json) => _$FundDataFromJson(json);
  Map toJson() => _$FundDataToJson(this);
}

abstract class _FundData {
  String paraId;
  dynamic cap;
  dynamic value;
  dynamic end;
  int firstSlot;
  int lastSlot;
  bool isWinner;
  bool isCapped;
  bool isEnded;
}
