// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asanas_search_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AsanasSearchStore on AsanasSearchStoreBase, Store {
  Computed<BuiltList<AsanaModel>> _$asanasComputed;

  @override
  BuiltList<AsanaModel> get asanas =>
      (_$asanasComputed ??= Computed<BuiltList<AsanaModel>>(() => super.asanas,
              name: 'AsanasSearchStoreBase.asanas'))
          .value;

  final _$_asanasListAtom = Atom(name: 'AsanasSearchStoreBase._asanasList');

  @override
  BuiltList<AsanaModel> get _asanasList {
    _$_asanasListAtom.reportRead();
    return super._asanasList;
  }

  @override
  set _asanasList(BuiltList<AsanaModel> value) {
    _$_asanasListAtom.reportWrite(value, super._asanasList, () {
      super._asanasList = value;
    });
  }

  final _$_searchTextAtom = Atom(name: 'AsanasSearchStoreBase._searchText');

  @override
  String get _searchText {
    _$_searchTextAtom.reportRead();
    return super._searchText;
  }

  @override
  set _searchText(String value) {
    _$_searchTextAtom.reportWrite(value, super._searchText, () {
      super._searchText = value;
    });
  }

  final _$_isSearchInProgressAtom =
      Atom(name: 'AsanasSearchStoreBase._isSearchInProgress');

  @override
  bool get _isSearchInProgress {
    _$_isSearchInProgressAtom.reportRead();
    return super._isSearchInProgress;
  }

  @override
  set _isSearchInProgress(bool value) {
    _$_isSearchInProgressAtom.reportWrite(value, super._isSearchInProgress, () {
      super._isSearchInProgress = value;
    });
  }

  @override
  String toString() {
    return '''
asanas: ${asanas}
    ''';
  }
}
