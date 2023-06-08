/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:dmadminpod_client/src/protocol/artical.dart' as _i3;
import 'dart:io' as _i4;
import 'protocol.dart' as _i5;

class _EndpointDM extends _i1.EndpointRef {
  _EndpointDM(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'dM';

  _i2.Future<List<_i3.Artical>> getArtical(String title) =>
      caller.callServerEndpoint<List<_i3.Artical>>(
        'dM',
        'getArtical',
        {'title': title},
      );

  _i2.Future<bool> addData(_i3.Artical artical) =>
      caller.callServerEndpoint<bool>(
        'dM',
        'addData',
        {'artical': artical},
      );

  _i2.Future<bool> updateData(_i3.Artical artical) =>
      caller.callServerEndpoint<bool>(
        'dM',
        'updateData',
        {'artical': artical},
      );
}

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i4.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i5.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    dM = _EndpointDM(this);
    example = _EndpointExample(this);
  }

  late final _EndpointDM dM;

  late final _EndpointExample example;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'dM': dM,
        'example': example,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
