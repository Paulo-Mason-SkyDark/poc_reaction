// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ReactionTest on _ReactionBase, Store {
  final _$sdfAtom = Atom(name: '_ReactionBase.sdf');

  @override
  bool get sdf {
    _$sdfAtom.reportRead();
    return super.sdf;
  }

  @override
  set sdf(bool value) {
    _$sdfAtom.reportWrite(value, super.sdf, () {
      super.sdf = value;
    });
  }

  final _$_ReactionBaseActionController =
      ActionController(name: '_ReactionBase');

  @override
  dynamic setSDF(bool isClosed) {
    final _$actionInfo = _$_ReactionBaseActionController.startAction(
        name: '_ReactionBase.setSDF');
    try {
      return super.setSDF(isClosed);
    } finally {
      _$_ReactionBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sdf: ${sdf}
    ''';
  }
}
