// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_classroom_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewClassroomStore on _NewClassroomStoreBase, Store {
  final _$editableClassroomAtom =
      Atom(name: '_NewClassroomStoreBase.editableClassroom');

  @override
  ClassroomModel get editableClassroom {
    _$editableClassroomAtom.reportRead();
    return super.editableClassroom;
  }

  @override
  set editableClassroom(ClassroomModel value) {
    _$editableClassroomAtom.reportWrite(value, super.editableClassroom, () {
      super.editableClassroom = value;
    });
  }

  final _$classroomRoutinesAtom =
      Atom(name: '_NewClassroomStoreBase.classroomRoutines');

  @override
  BuiltList<ClassroomRoutineModel> get classroomRoutines {
    _$classroomRoutinesAtom.reportRead();
    return super.classroomRoutines;
  }

  @override
  set classroomRoutines(BuiltList<ClassroomRoutineModel> value) {
    _$classroomRoutinesAtom.reportWrite(value, super.classroomRoutines, () {
      super.classroomRoutines = value;
    });
  }

  final _$_NewClassroomStoreBaseActionController =
      ActionController(name: '_NewClassroomStoreBase');

  @override
  void addRoutineToClassroomWithAsana(AsanaModel asana) {
    final _$actionInfo = _$_NewClassroomStoreBaseActionController.startAction(
        name: '_NewClassroomStoreBase.addRoutineToClassroomWithAsana');
    try {
      return super.addRoutineToClassroomWithAsana(asana);
    } finally {
      _$_NewClassroomStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateRoutineDuration(
      ClassroomRoutineModel classroomRoutine, Duration newDuration) {
    final _$actionInfo = _$_NewClassroomStoreBaseActionController.startAction(
        name: '_NewClassroomStoreBase.updateRoutineDuration');
    try {
      return super.updateRoutineDuration(classroomRoutine, newDuration);
    } finally {
      _$_NewClassroomStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeRoutineFromClassroom(ClassroomRoutineModel classroomRoutine) {
    final _$actionInfo = _$_NewClassroomStoreBaseActionController.startAction(
        name: '_NewClassroomStoreBase.removeRoutineFromClassroom');
    try {
      return super.removeRoutineFromClassroom(classroomRoutine);
    } finally {
      _$_NewClassroomStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reorderClassroomRoutine(int fromIndex, int toIndex) {
    final _$actionInfo = _$_NewClassroomStoreBaseActionController.startAction(
        name: '_NewClassroomStoreBase.reorderClassroomRoutine');
    try {
      return super.reorderClassroomRoutine(fromIndex, toIndex);
    } finally {
      _$_NewClassroomStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void saveForm() {
    final _$actionInfo = _$_NewClassroomStoreBaseActionController.startAction(
        name: '_NewClassroomStoreBase.saveForm');
    try {
      return super.saveForm();
    } finally {
      _$_NewClassroomStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
editableClassroom: ${editableClassroom},
classroomRoutines: ${classroomRoutines}
    ''';
  }
}
