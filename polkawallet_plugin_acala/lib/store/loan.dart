import 'package:mobx/mobx.dart';
import 'package:polkawallet_plugin_acala/api/types/loanType.dart';
import 'package:polkawallet_plugin_acala/api/types/txLoanData.dart';
import 'package:polkawallet_plugin_acala/store/cache/storeCache.dart';
import 'package:polkawallet_sdk/plugin/store/balances.dart';

part 'loan.g.dart';

class LoanStore extends _LoanStore with _$LoanStore {
  LoanStore(StoreCache cache) : super(cache);
}

abstract class _LoanStore with Store {
  _LoanStore(this.cache);

  final StoreCache cache;
  final String cacheTxsLoanKey = 'loan_txs';

  @observable
  List<LoanType> loanTypes = List<LoanType>();

  @observable
  Map<String, LoanData> loans = Map<String, LoanData>();

  @observable
  ObservableList<TxLoanData> txs = ObservableList<TxLoanData>();

  @action
  void setLoanTypes(List<LoanType> list) {
    loanTypes = list;
  }

  @action
  void setAccountLoans(Map<String, LoanData> data) {
    loans = data;
  }

  @action
  void addLoanTx(Map tx, String pubKey) {
    txs.add(TxLoanData.fromJson(Map<String, dynamic>.from(tx)));

    final cached = cache.loanTxs.val;
    List list = cached[pubKey];
    if (list != null) {
      list.add(tx);
    } else {
      list = [tx];
    }
    cached[pubKey] = list;
    cache.loanTxs.val = cached;
  }

  @action
  void loadCache(String pubKey) {
    if (pubKey == null || pubKey.isEmpty) return;

    final cached = cache.loanTxs.val;
    final list = cached[pubKey] as List;
    if (list != null) {
      txs = ObservableList<TxLoanData>.of(
          list.map((e) => TxLoanData.fromJson(Map<String, dynamic>.from(e))));
    } else {
      txs = ObservableList<TxLoanData>();
    }

    setAccountLoans(Map<String, LoanData>());
  }
}
