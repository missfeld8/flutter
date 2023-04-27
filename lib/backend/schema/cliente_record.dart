import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cliente_record.g.dart';

abstract class ClienteRecord
    implements Built<ClienteRecord, ClienteRecordBuilder> {
  static Serializer<ClienteRecord> get serializer => _$clienteRecordSerializer;

  String? get nome;

  String? get telefone;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ClienteRecordBuilder builder) => builder
    ..nome = ''
    ..telefone = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cliente');

  static Stream<ClienteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ClienteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ClienteRecord._();
  factory ClienteRecord([void Function(ClienteRecordBuilder) updates]) =
      _$ClienteRecord;

  static ClienteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createClienteRecordData({
  String? nome,
  String? telefone,
}) {
  final firestoreData = serializers.toFirestore(
    ClienteRecord.serializer,
    ClienteRecord(
      (c) => c
        ..nome = nome
        ..telefone = telefone,
    ),
  );

  return firestoreData;
}
