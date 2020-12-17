import 'package:flutter/material.dart';
import 'package:my_yoga_fl/assets.dart';
import 'package:my_yoga_fl/models/asana_model.dart';
import 'package:my_yoga_fl/widgets/button.dart';

class AsanaScreen extends StatelessWidget {
  // TODO: Is it use anywhere?
  static const routeName = '/asana';

  // TODO: Is it private?
  final AsanaModel _asanaModel;

  // TODO: Key argument for constructor?
  const AsanaScreen(this._asanaModel);

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
        title: Text(
          _asanaModel.title,
          style: Theme.of(context).textTheme.title,
        ),
//        actions: [
//          IconButton(
//            icon: Icon(Icons.star_border, color: Colors.yellow[700]),
//            onPressed: () {},
//          )
//        ],
      ),
      body: _AsanaScreen(_asanaModel),
    );
  }
}

class _AsanaScreen extends StatelessWidget {
  final AsanaModel asanaModel;

  const _AsanaScreen(this.asanaModel);

  Widget _getTextBlock(
      BuildContext context, String title, String text, Color titleColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
          color: titleColor,
          child: Text(
            title,
            maxLines: 1,
            style: Theme.of(context).textTheme.caption,
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          //Image.asset(asanaModel.imageUrls[0]), // TODO: Get image from model
          Stack(
            children: [
              Container(child: Image.asset(asanaModel.imageUrls[0])),
              Positioned(
                  top: 50,
                  right: -25,
                  child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.red,
                    child: Icon(
                      Icons.east,
                      color: Colors.white,
                      size: 25.0,
                      semanticLabel: 'Show next image',
                    ),
                    padding: EdgeInsets.all(2.0),
                    shape: CircleBorder(),
                  )),
              Positioned(
                  top: 50,
                  left: -25,
                  child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.red,
                    child: Icon(
                      Icons.west,
                      color: Colors.white,
                      size: 25.0,
                      semanticLabel: 'Show next image',
                    ),
                    padding: EdgeInsets.all(2.0),
                    shape: CircleBorder(),
                  )
                  /*
                  child: Icon(
                    Icons.west,
                    color: Colors.blue,
                    size: 30.0,
                    semanticLabel: 'Show next image',
                  )
                  */
                  )
            ],
          ),
          SizedBox(height: 15),
          Button(
            'Add to favourites',
            onTap: null,
          ),
          SizedBox(height: 15),
          _getTextBlock(
            context,
            'Steps to perform',
            asanaModel.description,
            Colors.tealAccent[200],
          ),
          SizedBox(height: 15),
          _getTextBlock(
            context,
            'Benefits',
            asanaModel.warnings,
            Colors.yellowAccent[200],
          ),
        ],
      ),
    );
  }
}
