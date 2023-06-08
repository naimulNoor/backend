/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Artical extends _i1.SerializableEntity {
  Artical({
    this.id,
    required this.title,
    required this.content,
    required this.publishOn,
    required this.isPrime,
  });

  factory Artical.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Artical(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      content: serializationManager
          .deserialize<String>(jsonSerialization['content']),
      publishOn: serializationManager
          .deserialize<DateTime>(jsonSerialization['publishOn']),
      isPrime:
          serializationManager.deserialize<bool>(jsonSerialization['isPrime']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String content;

  DateTime publishOn;

  bool isPrime;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'publishOn': publishOn,
      'isPrime': isPrime,
    };
  }
}
