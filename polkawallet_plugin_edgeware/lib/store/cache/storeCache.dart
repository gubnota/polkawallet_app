import 'package:get_storage/get_storage.dart';

const String plugin_edgeware_storage_key = 'plugin_edgeware';

abstract class StoreCache {
  static final _storage = () => GetStorage(plugin_edgeware_storage_key);

  /// staking network state
  final stakingOverview = {}.val('stakingOverview', getBox: _storage);
  final validatorsInfo = {}.val('validatorsInfo', getBox: _storage);

  /// governance network state
  final councilInfo = {}.val('councilInfo', getBox: _storage);

  /// account staking data
  final stakingOwnStash = {}.val('stakingOwnStash', getBox: _storage);
  final stakingTxs = {}.val('stakingTxs', getBox: _storage);
  final stakingRewardTxs = {}.val('stakingRewardTxs', getBox: _storage);
}

class StoreCacheEdgeware extends StoreCache {
  static final _storage = () => GetStorage(plugin_edgeware_storage_key);

  /// staking network state
  final stakingOverview = {}.val('stakingOverview', getBox: _storage);
  final validatorsInfo = {}.val('validatorsInfo', getBox: _storage);

  /// governance network state
  final councilInfo = {}.val('councilInfo', getBox: _storage);

  /// account staking data
  final stakingOwnStash = {}.val('stakingOwnStash', getBox: _storage);
  final stakingTxs = {}.val('stakingTxs', getBox: _storage);
  final stakingRewardTxs = {}.val('stakingRewardTxs', getBox: _storage);
}
