// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'framework.dart';

/// Superclass for locale-specific data provided by the application.
class LocaleQueryData { } // TODO(ianh): We need a better type here. This doesn't really make sense.

/// Establishes a subtree in which locale queries resolve to the given data.
class LocaleQuery extends InheritedWidget {
  LocaleQuery({
    Key key,
    this.data,
    Widget child
  }) : super(key: key, child: child) {
    assert(child != null);
  }

  /// The locale data for this subtree.
  final LocaleQueryData data;

  /// The data from the closest instance of this class that encloses the given context.
  static LocaleQueryData of(BuildContext context) {
    LocaleQuery query = context.inheritFromWidgetOfExactType(LocaleQuery);
    return query?.data;
  }

  @override
  bool updateShouldNotify(LocaleQuery old) => data != old.data;

  @override
  void debugFillDescription(List<String> description) {
    super.debugFillDescription(description);
    description.add('$data');
  }
}
