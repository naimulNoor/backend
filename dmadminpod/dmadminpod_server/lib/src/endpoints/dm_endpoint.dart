import 'dart:math';

import 'package:dmadminpod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class DMEndpoint extends Endpoint {
  //get data
  Future<List<Artical>> getArtical(Session session, String title) async {
    return await Artical.find(
      session,
      where: (t) => title != null ? t.title.like('%$title%') : Constant(true),
    );
  }

  //add data
  Future<bool> addData(Session session, Artical artical) async {
    session.log(
      "Data not added",
      level: LogLevel.error,
      exception: e,
      stackTrace: null,
    );
    try {
      Artical.insert(session, artical);
    } catch (e, stackTrace) {
      session.log(
        "Data not added",
        level: LogLevel.error,
        exception: e,
        stackTrace: stackTrace,
      );
    }

    return true;
  }

  Future<bool> updateData(Session session, Artical artical) async {
    var data = await Artical.update(session, artical);
    return data;
  }
}
