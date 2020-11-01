// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartController on _CartControllerBase, Store {
  Computed<bool> _$hasBowlComputed;

  @override
  bool get hasBowl => (_$hasBowlComputed ??= Computed<bool>(() => super.hasBowl,
          name: '_CartControllerBase.hasBowl'))
      .value;
  Computed<bool> _$hasAtLeastOneFlavorComputed;

  @override
  bool get hasAtLeastOneFlavor => (_$hasAtLeastOneFlavorComputed ??=
          Computed<bool>(() => super.hasAtLeastOneFlavor,
              name: '_CartControllerBase.hasAtLeastOneFlavor'))
      .value;
  Computed<bool> _$hasAtLeastOneAdditionalComputed;

  @override
  bool get hasAtLeastOneAdditional => (_$hasAtLeastOneAdditionalComputed ??=
          Computed<bool>(() => super.hasAtLeastOneAdditional,
              name: '_CartControllerBase.hasAtLeastOneAdditional'))
      .value;

  final _$cartAtom = Atom(name: '_CartControllerBase.cart');

  @override
  ObservableList<OrderModel> get cart {
    _$cartAtom.reportRead();
    return super.cart;
  }

  @override
  set cart(ObservableList<OrderModel> value) {
    _$cartAtom.reportWrite(value, super.cart, () {
      super.cart = value;
    });
  }

  final _$tempBowlAtom = Atom(name: '_CartControllerBase.tempBowl');

  @override
  BowlModel get tempBowl {
    _$tempBowlAtom.reportRead();
    return super.tempBowl;
  }

  @override
  set tempBowl(BowlModel value) {
    _$tempBowlAtom.reportWrite(value, super.tempBowl, () {
      super.tempBowl = value;
    });
  }

  final _$tempFlavorsAtom = Atom(name: '_CartControllerBase.tempFlavors');

  @override
  ObservableList<FlavorModel> get tempFlavors {
    _$tempFlavorsAtom.reportRead();
    return super.tempFlavors;
  }

  @override
  set tempFlavors(ObservableList<FlavorModel> value) {
    _$tempFlavorsAtom.reportWrite(value, super.tempFlavors, () {
      super.tempFlavors = value;
    });
  }

  final _$tempAdditionalsAtom =
      Atom(name: '_CartControllerBase.tempAdditionals');

  @override
  ObservableList<AdditionalModel> get tempAdditionals {
    _$tempAdditionalsAtom.reportRead();
    return super.tempAdditionals;
  }

  @override
  set tempAdditionals(ObservableList<AdditionalModel> value) {
    _$tempAdditionalsAtom.reportWrite(value, super.tempAdditionals, () {
      super.tempAdditionals = value;
    });
  }

  final _$_CartControllerBaseActionController =
      ActionController(name: '_CartControllerBase');

  @override
  void toggleBowl({BowlModel bowl}) {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.toggleBowl');
    try {
      return super.toggleBowl(bowl: bowl);
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleFlavor({FlavorModel flavor}) {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.toggleFlavor');
    try {
      return super.toggleFlavor(flavor: flavor);
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _addFlavor(FlavorModel flavor) {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase._addFlavor');
    try {
      return super._addFlavor(flavor);
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _removeFlavor(FlavorModel flavor) {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase._removeFlavor');
    try {
      return super._removeFlavor(flavor);
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleAdditional({AdditionalModel additional}) {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.toggleAdditional');
    try {
      return super.toggleAdditional(additional: additional);
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _addAdditional(AdditionalModel additional) {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase._addAdditional');
    try {
      return super._addAdditional(additional);
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _removeAdditional(AdditionalModel additional) {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase._removeAdditional');
    try {
      return super._removeAdditional(additional);
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearTempOrder() {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.clearTempOrder');
    try {
      return super.clearTempOrder();
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cart: ${cart},
tempBowl: ${tempBowl},
tempFlavors: ${tempFlavors},
tempAdditionals: ${tempAdditionals},
hasBowl: ${hasBowl},
hasAtLeastOneFlavor: ${hasAtLeastOneFlavor},
hasAtLeastOneAdditional: ${hasAtLeastOneAdditional}
    ''';
  }
}
