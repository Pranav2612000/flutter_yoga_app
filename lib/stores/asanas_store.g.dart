// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asanas_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AsanasStore on AsanasStoreBase, Store {
  Computed<BuiltList<AsanaModel>> _$sortedAsanasListComputed;

  @override
  BuiltList<AsanaModel> get sortedAsanasList => (_$sortedAsanasListComputed ??=
          Computed<BuiltList<AsanaModel>>(() => super.sortedAsanasList,
              name: 'AsanasStoreBase.sortedAsanasList'))
      .value;

  final _$asanasAtom = Atom(name: 'AsanasStoreBase.asanas');

  @override
  BuiltMap<String, AsanaModel> get asanas {
    _$asanasAtom.reportRead();
    return super.asanas;
  }

  @override
  set asanas(BuiltMap<String, AsanaModel> value) {
    _$asanasAtom.reportWrite(value, super.asanas, () {
      super.asanas = value;
    });
  }

  final _$initAsyncAction = AsyncAction('AsanasStoreBase.init');

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  @override
  String toString() {
    return '''
asanas: ${asanas},
sortedAsanasList: ${sortedAsanasList}
    ''';
  }
}
