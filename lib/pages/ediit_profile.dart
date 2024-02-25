// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:namer_app/components/appbar.dart';
import 'package:namer_app/components/text_field.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Edit'),
      body: Column(
        children: [
          AppTextField(hint: "First name"),
          AppTextField(hint: "Last name"),
          AppTextField(hint: "Phone number"),
          AppTextField(hint: "Location"),
        ],
      ),
    );
  }
}
