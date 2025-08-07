
import 'package:flutter/material.dart';

pushTo(BuildContext context , Widget newPage){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => newPage),
  );
}
replaceTo(BuildContext context , Widget newPage){
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => newPage),
  );
}