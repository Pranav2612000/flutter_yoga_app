// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlayerStore on PlayerStoreBase, Store {
  Computed<bool> _$isFinishedComputed;

  @override
  bool get isFinished =>
      (_$isFinishedComputed ??= Computed<bool>(() => super.isFinished,
              name: 'PlayerStoreBase.isFinished'))
          .value;
  Computed<bool> _$isSkipEnabledComputed;

  @override
  bool get isSkipEnabled =>
      (_$isSkipEnabledComputed ??= Computed<bool>(() => super.isSkipEnabled,
              name: 'PlayerStoreBase.isSkipEnabled'))
          .value;
  Computed<bool> _$isRewindEnabledComputed;

  @override
  bool get isRewindEnabled =>
      (_$isRewindEnabledComputed ??= Computed<bool>(() => super.isRewindEnabled,
              name: 'PlayerStoreBase.isRewindEnabled'))
          .value;
  Computed<PlayerPhase> _$playerPhaseComputed;

  @override
  PlayerPhase get playerPhase =>
      (_$playerPhaseComputed ??= Computed<PlayerPhase>(() => super.playerPhase,
              name: 'PlayerStoreBase.playerPhase'))
          .value;
  Computed<int> _$currentAsanaBlockIndexComputed;

  @override
  int get currentAsanaBlockIndex => (_$currentAsanaBlockIndexComputed ??=
          Computed<int>(() => super.currentAsanaBlockIndex,
              name: 'PlayerStoreBase.currentAsanaBlockIndex'))
      .value;
  Computed<String> _$currentAsanaUniqueNameComputed;

  @override
  String get currentAsanaUniqueName => (_$currentAsanaUniqueNameComputed ??=
          Computed<String>(() => super.currentAsanaUniqueName,
              name: 'PlayerStoreBase.currentAsanaUniqueName'))
      .value;

  final _$isPlayingAtom = Atom(name: 'PlayerStoreBase.isPlaying');

  @override
  bool get isPlaying {
    _$isPlayingAtom.reportRead();
    return super.isPlaying;
  }

  @override
  set isPlaying(bool value) {
    _$isPlayingAtom.reportWrite(value, super.isPlaying, () {
      super.isPlaying = value;
    });
  }

  final _$totalTimerAtom = Atom(name: 'PlayerStoreBase.totalTimer');

  @override
  Duration get totalTimer {
    _$totalTimerAtom.reportRead();
    return super.totalTimer;
  }

  @override
  set totalTimer(Duration value) {
    _$totalTimerAtom.reportWrite(value, super.totalTimer, () {
      super.totalTimer = value;
    });
  }

  final _$_currentQueueItemIndexAtom =
      Atom(name: 'PlayerStoreBase._currentQueueItemIndex');

  @override
  int get _currentQueueItemIndex {
    _$_currentQueueItemIndexAtom.reportRead();
    return super._currentQueueItemIndex;
  }

  @override
  set _currentQueueItemIndex(int value) {
    _$_currentQueueItemIndexAtom
        .reportWrite(value, super._currentQueueItemIndex, () {
      super._currentQueueItemIndex = value;
    });
  }

  final _$currentTimerDurationAtom =
      Atom(name: 'PlayerStoreBase.currentTimerDuration');

  @override
  Duration get currentTimerDuration {
    _$currentTimerDurationAtom.reportRead();
    return super.currentTimerDuration;
  }

  @override
  set currentTimerDuration(Duration value) {
    _$currentTimerDurationAtom.reportWrite(value, super.currentTimerDuration,
        () {
      super.currentTimerDuration = value;
    });
  }

  final _$PlayerStoreBaseActionController =
      ActionController(name: 'PlayerStoreBase');

  @override
  void pausePlayer() {
    final _$actionInfo = _$PlayerStoreBaseActionController.startAction(
        name: 'PlayerStoreBase.pausePlayer');
    try {
      return super.pausePlayer();
    } finally {
      _$PlayerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void startPlayer() {
    final _$actionInfo = _$PlayerStoreBaseActionController.startAction(
        name: 'PlayerStoreBase.startPlayer');
    try {
      return super.startPlayer();
    } finally {
      _$PlayerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _tickTotalTimer(Duration duration) {
    final _$actionInfo = _$PlayerStoreBaseActionController.startAction(
        name: 'PlayerStoreBase._tickTotalTimer');
    try {
      return super._tickTotalTimer(duration);
    } finally {
      _$PlayerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _tickCurrentTimer(Duration duration) {
    final _$actionInfo = _$PlayerStoreBaseActionController.startAction(
        name: 'PlayerStoreBase._tickCurrentTimer');
    try {
      return super._tickCurrentTimer(duration);
    } finally {
      _$PlayerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void skipCurrentPhase() {
    final _$actionInfo = _$PlayerStoreBaseActionController.startAction(
        name: 'PlayerStoreBase.skipCurrentPhase');
    try {
      return super.skipCurrentPhase();
    } finally {
      _$PlayerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void rewindCurrentPhaseOrGoBack() {
    final _$actionInfo = _$PlayerStoreBaseActionController.startAction(
        name: 'PlayerStoreBase.rewindCurrentPhaseOrGoBack');
    try {
      return super.rewindCurrentPhaseOrGoBack();
    } finally {
      _$PlayerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _updateCurrentTimerDuration() {
    final _$actionInfo = _$PlayerStoreBaseActionController.startAction(
        name: 'PlayerStoreBase._updateCurrentTimerDuration');
    try {
      return super._updateCurrentTimerDuration();
    } finally {
      _$PlayerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isPlaying: ${isPlaying},
totalTimer: ${totalTimer},
currentTimerDuration: ${currentTimerDuration},
isFinished: ${isFinished},
isSkipEnabled: ${isSkipEnabled},
isRewindEnabled: ${isRewindEnabled},
playerPhase: ${playerPhase},
currentAsanaBlockIndex: ${currentAsanaBlockIndex},
currentAsanaUniqueName: ${currentAsanaUniqueName}
    ''';
  }
}
