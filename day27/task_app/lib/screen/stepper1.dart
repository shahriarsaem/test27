import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_app/widget/brand_colors.dart';

class Stepper1 extends StatefulWidget {
  @override
  State<Stepper1> createState() => _Stepper1State();
}

class _Stepper1State extends State<Stepper1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: bgColor,
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios),
          title: SvgPicture.asset("asset/Slider2.svg")),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text("Complete your profile",
                style: myStyle(16, aTextColorDark, FontWeight.w600)),
            GestureDetector(
              onTap: () {
                selectImage(context);
              },
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey)),
                child: Container(
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: _image != null
                        ? CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: FileImage(_image!),
                          )
                        : IconButton(
                            icon: Icon(Icons.camera),
                            onPressed: () {
                              selectImage(context);
                            },
                          )),
              ),
            )
          ],
        ),
      ),
    );
  }

  selectImage(BuildContext ctx) {
    return showDialog(
        context: ctx,
        builder: (context) {
          return SimpleDialog(
            title: Text("Select your image"),
            children: [
              SimpleDialogOption(
                child: Text("Choose from Gallery"),
                onPressed: () {
                  getImageFromGallery();
                },
              ),
              SimpleDialogOption(
                child: Text("Choose from Camera"),
                onPressed: () {
                  getImageFromCamera();
                },
              ),
              SimpleDialogOption(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  File? _image;

  ImagePicker picker = ImagePicker();

  getImageFromGallery() async {
    var pickImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickImage!.path);
    });
    Navigator.of(context).pop();
  }

  getImageFromCamera() async {
    var pickImage = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(pickImage!.path);
    });
    Navigator.of(context).pop();
  }
}
