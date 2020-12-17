import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:my_yoga_fl/i18n/plural.dart';
import 'package:my_yoga_fl/models/classroom_model.dart';
import 'package:my_yoga_fl/screens/asana_screen.dart';
import 'package:my_yoga_fl/screens/new_classroom/new_classroom_screen.dart';
import 'package:my_yoga_fl/screens/player/player_main_screen.dart';
import 'package:my_yoga_fl/stores/asanas_store.dart';
import 'package:my_yoga_fl/stores/classrooms_store.dart';
import 'package:my_yoga_fl/stores/new_classroom_store.dart';
import 'package:my_yoga_fl/stores/player_store.dart';
import 'package:my_yoga_fl/styles.dart';
import 'package:my_yoga_fl/utils/local_notification.dart';
import 'package:my_yoga_fl/utils/log.dart';
import 'package:my_yoga_fl/widgets/asanas_list.dart';
import 'package:provider/provider.dart';

class ClassroomScreen extends StatefulWidget {
  final ClassroomModel classroom;

  const ClassroomScreen({
    Key key,
    @required this.classroom,
  }) : super(key: key);

  @override
  _ClassroomScreenState createState() => _ClassroomScreenState(classroom);
}

class _ClassroomScreenState extends State<ClassroomScreen> {
  ClassroomModel _classroom;

  _ClassroomScreenState(this._classroom);

  void _onClassroomEditButtonTap(BuildContext context) {
    final route = MaterialPageRoute(
      fullscreenDialog: true,
      builder: (_) {
        final newClassroomStore = NewClassroomStore.withClassroom(_classroom);

        when(
          (_) => newClassroomStore.editableClassroom != _classroom,
          () {
            Provider.of<ClassroomsStore>(context, listen: false)
                .updateClassroom(newClassroomStore.editableClassroom);
            // Update ClassroomScreen widget
            setState(() => _classroom = newClassroomStore.editableClassroom);
          },
          onError: (error, _) {
            LocalNotification.error(context, inPostCallback: true);
            Log.error(error);
          },
        );

        return NewClassroomScreen(newClassroomStore: newClassroomStore);
      },
    );

    Navigator.push(context, route);
  }

  Widget _getEditButton(BuildContext context) {
    if (_classroom.isPredefined == true) {
      return SizedBox.shrink();
    }

    return IconButton(
      icon: Icon(Icons.edit, color: Colors.black),
      onPressed: () => _onClassroomEditButtonTap(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        brightness: Brightness.light,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.grey,
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          _getEditButton(context),
        ],
        title: Text(
          _classroom.title,
          style: Theme.of(context).textTheme.title,
        ),
      ),
      body: _ClassroomScreenContent(classroom: _classroom),
    );
  }
}

class _ClassroomScreenContent extends StatelessWidget {
  static const HEIGHT_BETWEEN_WIDGETS = 25.0;

  final ClassroomModel classroom;

  const _ClassroomScreenContent({Key key, @required this.classroom})
      : super(key: key);

  Widget _getClassroomImage() {
    if (classroom.coverImage == null) {
      return SizedBox.shrink();
    }

    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.only(bottom: HEIGHT_BETWEEN_WIDGETS),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [
            Colors.grey[100],
            Colors.grey[200],
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Icon(Icons.image, color: Colors.grey[600], size: 32),
    );
  }

  Widget _getClassroomDescription() {
    if (classroom.description == null || classroom.description.isEmpty) {
      return SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(top: HEIGHT_BETWEEN_WIDGETS),
      child: Text(
        classroom.description,
        maxLines: 5,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 18, color: Colors.blueGrey),
      ),
    );
  }

  Widget _getStartButton(BuildContext context) {
    return GestureDetector(
      // TODO: Change widget to MaterialButton
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) {
              final playerStore = PlayerStore(classroom);

              return PlayerMainScreen(
                  classroom: classroom, playerStore: playerStore);
            },
          ),
        );
      },
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.yellow[300], // TODO: Add glow effect
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.play_arrow),
            SizedBox(width: 5),
            Text(
              'Start class',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getAsanasList(BuildContext context) {
    final store = Provider.of<AsanasStore>(context, listen: false);
    final asanas = store.getAsanasInClassroom(classroom);

    if (asanas.isEmpty) {
      return SliverList(
          delegate: SliverChildListDelegate([])); // TODO: Empty list
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final asana = asanas[index]; // FIXME: Out of a range

        return Column(
          children: <Widget>[
            AsanaListItem(
              title: asana.title,
              imageUrl: asana.imageUrl,
              level: asana.level,
              hindiTitle: asana.hindiTitle,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AsanaScreen(asana);
                }));
              },
            ),
            SizedBox(height: 15),
          ],
        );
      }, childCount: asanas.length),
    );
  }

  Widget _getClassroomInfo() {
    final pauseText = classroom.timeBetweenAsanas <= 0
        ? 'no breaks'
        : 'breaks duration ${classroomTimeRounded(classroom.durationBetweenAsanas)}';

    return Text(
      '${asanasCount(classroom.classroomRoutines.length)}'
      ' • $pauseText • total ${classroomTimeRounded(classroom.totalDuration)}',
      style: Styles.classroomInfoText,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
      child: NotificationListener<OverscrollIndicatorNotification>(
        // TODO Check this method for disabling Android like scroll glow
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return true;
        },
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
                _getClassroomImage(),
                _getClassroomDescription(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: HEIGHT_BETWEEN_WIDGETS),
                  child: _getStartButton(context),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: HEIGHT_BETWEEN_WIDGETS),
                  child: _getClassroomInfo(),
                ),
              ]),
            ),
            _getAsanasList(context),
          ],
        ),
      ),
    );
  }
}
