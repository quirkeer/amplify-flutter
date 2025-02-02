/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InheritedAuthBloc extends InheritedWidget {
  const InheritedAuthBloc({
    Key? key,
    required this.authBloc,
    required Widget child,
  }) : super(key: key, child: child);

  final StateMachineBloc authBloc;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static StateMachineBloc of(BuildContext context, {bool listen = true}) {
    InheritedAuthBloc? bloc;
    if (listen) {
      bloc = context.dependOnInheritedWidgetOfExactType<InheritedAuthBloc>();
    } else {
      bloc = context.findAncestorWidgetOfExactType<InheritedAuthBloc>();
    }
    assert(() {
      if (bloc == null) {
        throw FlutterError.fromParts([
          ErrorSummary('No InheritedAuthBloc widget found.'),
          ErrorDescription(
            'Make sure your app is wrapped with an Authenticator widget.',
          )
        ]);
      }
      return true;
    }());
    return bloc!.authBloc;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<StateMachineBloc>('authBloc', authBloc));
  }
}

// ignore_for_file: prefer_asserts_with_message
