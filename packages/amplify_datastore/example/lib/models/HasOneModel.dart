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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the HasOneModel type in your schema. */
@immutable
class HasOneModel extends Model {
  static const classType = const _HasOneModelModelType();
  final String id;
  final String? _name;
  final String? _childID;
  final ChildModel? _child;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String get name {
    try {
      return _name!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get childID {
    try {
      return _childID!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  ChildModel? get child {
    return _child;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const HasOneModel._internal(
      {required this.id,
      required name,
      required childID,
      child,
      createdAt,
      updatedAt})
      : _name = name,
        _childID = childID,
        _child = child,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory HasOneModel(
      {String? id,
      required String name,
      required String childID,
      ChildModel? child}) {
    return HasOneModel._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        childID: childID,
        child: child);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasOneModel &&
        id == other.id &&
        _name == other._name &&
        _childID == other._childID &&
        _child == other._child;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("HasOneModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("childID=" + "$_childID" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  HasOneModel copyWith(
      {String? id, String? name, String? childID, ChildModel? child}) {
    return HasOneModel._internal(
        id: id ?? this.id,
        name: name ?? this.name,
        childID: childID ?? this.childID,
        child: child ?? this.child);
  }

  HasOneModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _childID = json['childID'],
        _child = json['child']?['serializedData'] != null
            ? ChildModel.fromJson(
                new Map<String, dynamic>.from(json['child']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'childID': _childID,
        'child': _child?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "hasOneModel.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField CHILDID = QueryField(fieldName: "childID");
  static final QueryField CHILD = QueryField(
      fieldName: "child",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (ChildModel).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasOneModel";
    modelSchemaDefinition.pluralName = "HasOneModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: HasOneModel.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: HasOneModel.CHILDID,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
        key: HasOneModel.CHILD,
        isRequired: false,
        ofModelName: (ChildModel).toString(),
        associatedKey: ChildModel.ID));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'createdAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'updatedAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));
  });
}

class _HasOneModelModelType extends ModelType<HasOneModel> {
  const _HasOneModelModelType();

  @override
  HasOneModel fromJson(Map<String, dynamic> jsonData) {
    return HasOneModel.fromJson(jsonData);
  }
}
