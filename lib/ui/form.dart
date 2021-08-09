import 'package:flutter/material.dart';

class FormUi extends StatefulWidget {
  // const FormUi({ Key? key }) : super(key: key);

  @override
  _FormUiState createState() => _FormUiState();
}

class _FormUiState extends State<FormUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Name",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
