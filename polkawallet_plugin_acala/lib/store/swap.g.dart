// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swap.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SwapStore on _SwapStore, Store {
  final _$txsAtom = Atom(name: '_SwapStore.txs');

  @override
  ObservableList<TxSwapData> get txs {
    _$txsAtom.reportRead();
    return super.txs;
  }

  @override
  set txs(ObservableList<TxSwapData> value) {
    _$txsAtom.reportWrite(value, super.txs, () {
      super.txs = value;
    });
  }

  final _$_SwapStoreActionController = ActionController(name: '_SwapStore');

  @override
  void addSwapTx(Map<dynamic, dynamic> tx, String pubKey, int decimals) {
    final _$actionInfo =
        _$_SwapStoreActionController.startAction(name: '_SwapStore.addSwapTx');
    try {
      return super.addSwapTx(tx, pubKey, decimals);
    } finally {
      _$_SwapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadCache(String pubKey) {
    final _$actionInfo =
        _$_SwapStoreActionController.startAction(name: '_SwapStore.loadCache');
    try {
      return super.loadCache(pubKey);
    } finally {
      _$_SwapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
txs: ${txs}
    ''';
  }
}
