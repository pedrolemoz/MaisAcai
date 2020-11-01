// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_data_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StoreDataController on _StoreDataControllerBase, Store {
  final _$bowlsAtom = Atom(name: '_StoreDataControllerBase.bowls');

  @override
  ObservableList<BowlModel> get bowls {
    _$bowlsAtom.reportRead();
    return super.bowls;
  }

  @override
  set bowls(ObservableList<BowlModel> value) {
    _$bowlsAtom.reportWrite(value, super.bowls, () {
      super.bowls = value;
    });
  }

  final _$flavorsAtom = Atom(name: '_StoreDataControllerBase.flavors');

  @override
  ObservableList<FlavorModel> get flavors {
    _$flavorsAtom.reportRead();
    return super.flavors;
  }

  @override
  set flavors(ObservableList<FlavorModel> value) {
    _$flavorsAtom.reportWrite(value, super.flavors, () {
      super.flavors = value;
    });
  }

  final _$additionalsAtom = Atom(name: '_StoreDataControllerBase.additionals');

  @override
  ObservableList<AdditionalModel> get additionals {
    _$additionalsAtom.reportRead();
    return super.additionals;
  }

  @override
  set additionals(ObservableList<AdditionalModel> value) {
    _$additionalsAtom.reportWrite(value, super.additionals, () {
      super.additionals = value;
    });
  }

  final _$_StoreDataControllerBaseActionController =
      ActionController(name: '_StoreDataControllerBase');

  @override
  void _fetchAvaliableComponents() {
    final _$actionInfo = _$_StoreDataControllerBaseActionController.startAction(
        name: '_StoreDataControllerBase._fetchAvaliableComponents');
    try {
      return super._fetchAvaliableComponents();
    } finally {
      _$_StoreDataControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
bowls: ${bowls},
flavors: ${flavors},
additionals: ${additionals}
    ''';
  }
}
