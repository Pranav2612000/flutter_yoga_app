// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classrooms_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClassroomsStore on ClassroomsStoreBase, Store {
  Computed<List<ClassroomModel>> _$predefinedClassroomsComputed;

  @override
  List<ClassroomModel> get predefinedClassrooms =>
      (_$predefinedClassroomsComputed ??= Computed<List<ClassroomModel>>(
              () => super.predefinedClassrooms,
              name: 'ClassroomsStoreBase.predefinedClassrooms'))
          .value;
  Computed<List<ClassroomModel>> _$usersClassroomsComputed;

  @override
  List<ClassroomModel> get usersClassrooms => (_$usersClassroomsComputed ??=
          Computed<List<ClassroomModel>>(() => super.usersClassrooms,
              name: 'ClassroomsStoreBase.usersClassrooms'))
      .value;

  final _$_classroomsAtom = Atom(name: 'ClassroomsStoreBase._classrooms');

  @override
  BuiltList<ClassroomModel> get _classrooms {
    _$_classroomsAtom.reportRead();
    return super._classrooms;
  }

  @override
  set _classrooms(BuiltList<ClassroomModel> value) {
    _$_classroomsAtom.reportWrite(value, super._classrooms, () {
      super._classrooms = value;
    });
  }

  final _$initAsyncAction = AsyncAction('ClassroomsStoreBase.init');

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$ClassroomsStoreBaseActionController =
      ActionController(name: 'ClassroomsStoreBase');

  @override
  void addClassroom(ClassroomModel classroom) {
    final _$actionInfo = _$ClassroomsStoreBaseActionController.startAction(
        name: 'ClassroomsStoreBase.addClassroom');
    try {
      return super.addClassroom(classroom);
    } finally {
      _$ClassroomsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateClassroom(ClassroomModel classroom) {
    final _$actionInfo = _$ClassroomsStoreBaseActionController.startAction(
        name: 'ClassroomsStoreBase.updateClassroom');
    try {
      return super.updateClassroom(classroom);
    } finally {
      _$ClassroomsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteClassroom(ClassroomModel classroom) {
    final _$actionInfo = _$ClassroomsStoreBaseActionController.startAction(
        name: 'ClassroomsStoreBase.deleteClassroom');
    try {
      return super.deleteClassroom(classroom);
    } finally {
      _$ClassroomsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
predefinedClassrooms: ${predefinedClassrooms},
usersClassrooms: ${usersClassrooms}
    ''';
  }
}
