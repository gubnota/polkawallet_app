import 'package:mobx/mobx.dart';
import 'package:polkawallet_plugin_acala/api/types/stakingPoolInfoData.dart';
import 'package:polkawallet_plugin_acala/api/types/txHomaData.dart';
import 'package:polkawallet_plugin_acala/common/constants.dart';
import 'package:polkawallet_plugin_acala/store/cache/storeCache.dart';

part 'homa.g.dart';

class HomaStore extends _HomaStore with _$HomaStore {
  HomaStore(StoreCache cache) : super(cache);
}

abstract class _HomaStore with Store {
  _HomaStore(this.cache);

  final StoreCache cache;

  @observable
  StakingPoolInfoData stakingPoolInfo = StakingPoolInfoData();

  @observable
  HomaUserInfoData userInfo = HomaUserInfoData();

  @observable
  ObservableList<TxHomaData> txs = ObservableList<TxHomaData>();

  @action
  void setStakingPoolInfoData(StakingPoolInfoData data) {
    stakingPoolInfo = data;
  }

  @action
  Future<void> setHomaUserInfo(HomaUserInfoData info) async {
    userInfo = info;
  }

  @action
  void addHomaTx(Map tx, String pubKey, int decimals) {
    txs.add(TxHomaData.fromJson(Map<String, dynamic>.from(tx), decimals));

    final cached = cache.homaTxs.val;
    List list = cached[pubKey];
    if (list != null) {
      list.add(tx);
    } else {
      list = [tx];
    }
    cached[pubKey] = list;
    cache.homaTxs.val = cached;
  }

  @action
  void loadCache(String pubKey) {
    if (pubKey == null || pubKey.isEmpty) return;

    final cached = cache.homaTxs.val;
    final list = cached[pubKey] as List;
    if (list != null) {
      txs = ObservableList<TxHomaData>.of(list.map((e) => TxHomaData.fromJson(
          Map<String, dynamic>.from(e), acala_token_decimals)));
    } else {
      txs = ObservableList<TxHomaData>();
    }

    setHomaUserInfo(HomaUserInfoData());
  }
}
