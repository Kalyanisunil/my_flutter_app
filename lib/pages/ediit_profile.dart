import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:namer_app/components/appbar.dart';
import 'package:namer_app/components/avatar.dart';
import 'package:namer_app/components/text_field.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Edit'),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            Stack(children: [
              avatar(
                size: 130,
              ),
              Positioned(
                  bottom: 0,
                  right: 13,
                  child: Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.white,
                      ))),
            ]),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: "First name"),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: "Last name"),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: "Phone number"),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: "Location"),
          ],
        ),
      ),
    );
  }
}
