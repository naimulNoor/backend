/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/dm_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import 'package:dmadminpod_server/src/generated/artical.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'dM': _i2.DMEndpoint()
        ..initialize(
          server,
          'dM',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
    };
    connectors['dM'] = _i1.EndpointConnector(
      name: 'dM',
      endpoint: endpoints['dM']!,
      methodConnectors: {
        'getArtical': _i1.MethodConnector(
          name: 'getArtical',
          params: {
            'title': _i1.ParameterDescription(
              name: 'title',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dM'] as _i2.DMEndpoint).getArtical(
            session,
            params['title'],
          ),
        ),
        'addData': _i1.MethodConnector(
          name: 'addData',
          params: {
            'artical': _i1.ParameterDescription(
              name: 'artical',
              type: _i1.getType<_i4.Artical>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dM'] as _i2.DMEndpoint).addData(
            session,
            params['artical'],
          ),
        ),
        'updateData': _i1.MethodConnector(
          name: 'updateData',
          params: {
            'artical': _i1.ParameterDescription(
              name: 'artical',
              type: _i1.getType<_i4.Artical>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dM'] as _i2.DMEndpoint).updateData(
            session,
            params['artical'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
  }
}
