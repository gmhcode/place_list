import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:place_list/widgets/images_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routName = '/add-place';
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a New Place'),
      ),
      body: Column(
        //Pushes the button down
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //Stretches the button
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //If we put a column here instead of expanded, it would have made the button the same size as the other items in the column
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: _titleController,
                    ),
                    SizedBox(height: 10),
                    ImageInput(),
                  ],
                ),
              ),
            ),
          ),
          Text('User Inputs...'),
          ElevatedButton.icon(
            icon: Icon(Icons.add),
            label: Text('Add Place'),
            style: ElevatedButton.styleFrom(
                elevation: 0,
                //Removed small amount of bottom margin
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                primary: Theme.of(context).accentColor),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
