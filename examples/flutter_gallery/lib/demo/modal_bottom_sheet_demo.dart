// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

final TextStyle _kTextStyle = new TextStyle(
  color: Colors.indigo[400],
  fontSize: 24.0
);

class ModalBottomSheetDemo extends StatelessWidget {
  static const String routeName = '/modal-bottom-sheet';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Modal bottom sheet')),
      body: new Center(
        child: new RaisedButton(
          child: new Text('SHOW BOTTOM SHEET'),
          onPressed: () {
            showModalBottomSheet/*<Null>*/(context: context, builder: (BuildContext context) {
              return new Container(
                child: new Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: new Text('This is the modal bottom sheet. Click anywhere to dismiss.',
                    style: _kTextStyle,
                    textAlign: TextAlign.center
                  )
                )
              );
            });
          }
        )
      )
    );
  }
}
