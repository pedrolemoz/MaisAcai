import 'package:flutter/material.dart';
import '../../../helpers/helpers.dart';
import '../../../models/models.dart';

final kBowls = <BowlModel>[
  BowlModel(
    name: '300 ml',
  ),
  BowlModel(
    name: '400 ml',
  ),
  BowlModel(
    name: '500 ml',
  ),
  BowlModel(
    name: '1 litro',
  ),
];

final kFlavors = <FlavorModel>[
  FlavorModel(
    name: 'Açaí Puro',
    imageAsset: AssetsHelper.acaiPuro,
  ),
  FlavorModel(
    name: 'Açaí com Banana',
    imageAsset: AssetsHelper.acaiComBanana,
    colors: [
      Colors.yellow[600],
      Colors.yellow[900],
    ],
  ),
  FlavorModel(
    name: 'Açaí com Morango',
    imageAsset: AssetsHelper.acaiComMorango,
    colors: [
      Colors.red[600],
      Colors.red[900],
    ],
  ),
  FlavorModel(
    name: 'Açaí com Cupuaçu',
    imageAsset: AssetsHelper.acaiComCupuacu,
    colors: [
      Colors.brown[600],
      Colors.brown[900],
    ],
  ),
];

final kAdditionals = <AdditionalModel>[
  AdditionalModel(name: 'Brigadeiro'),
  AdditionalModel(name: 'Calda de Chocolate'),
  AdditionalModel(name: 'Calda de Chocolate com Coco'),
  AdditionalModel(name: 'Cerejas'),
  AdditionalModel(name: 'Leite Condensado'),
  AdditionalModel(name: 'Granola'),
];
