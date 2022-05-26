
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class DecoratedTextfields {
  static const MethodChannel _channel = MethodChannel('decorated_textfields');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  
  static TextField textfield(String hint) {
    return  TextField(  

      decoration:  InputDecoration(
        fillColor : Colors.blue,
        
        hintText: hint
      ),
    );
  }
  
  
}
