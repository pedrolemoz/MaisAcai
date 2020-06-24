import 'package:flutter/material.dart';

enum Bowls {
  threeHundred,
  fourHundred,
  fiveHundred,
  oneThousand,
}

enum Flavors {
  acaiPuro,
  acaiComBanana,
  acaiComMorango,
  acaiComCupuacu,
}

enum Additionals {
  brigadeiro,
  caldaDeChocolate,
  caldaDeChocolateComCoco,
  cerejas,
  leiteCondensado,
  granola,
}

extension BowlExtension on Bowls {
  int get itemType => 1;

  String get name {
    switch (this) {
      case Bowls.threeHundred:
        return '300 ml';
      case Bowls.fourHundred:
        return '400 ml';
      case Bowls.fiveHundred:
        return '500 ml';
      case Bowls.oneThousand:
        return '1 litro';
      default:
        return null;
    }
  }

  String get imageURI {
    switch (this) {
      case Bowls.threeHundred:
        return 'assets/acai_puro.png';
      case Bowls.fourHundred:
        return 'assets/acai_puro.png';
      case Bowls.fiveHundred:
        return 'assets/acai_puro.png';
      case Bowls.oneThousand:
        return 'assets/acai_puro.png';
      default:
        return null;
    }
  }

  List<Color> get colors {
    switch (this) {
      case Bowls.threeHundred:
        return [
          Color(0xFF9a487f),
          Color(0xFF6A1953),
        ];
      case Bowls.fourHundred:
        return [
          Color(0xFF9a487f),
          Color(0xFF6A1953),
        ];
      case Bowls.fiveHundred:
        return [
          Color(0xFF9a487f),
          Color(0xFF6A1953),
        ];
      case Bowls.oneThousand:
        return [
          Color(0xFF9a487f),
          Color(0xFF6A1953),
        ];
      default:
        return null;
    }
  }
}

extension FlavorExtension on Flavors {
  int get itemType => 1;

  String get name {
    switch (this) {
      case Flavors.acaiPuro:
        return 'Açaí Puro';
      case Flavors.acaiComBanana:
        return 'Açaí com Banana';
      case Flavors.acaiComMorango:
        return 'Açaí com Morango';
      case Flavors.acaiComCupuacu:
        return 'Açaí com Cupuaçu';
      default:
        return null;
    }
  }

  String get imageURI {
    switch (this) {
      case Flavors.acaiPuro:
        return 'assets/acai_puro.png';
      case Flavors.acaiComBanana:
        return 'assets/acai_com_banana.png';
      case Flavors.acaiComMorango:
        return 'assets/acai_com_morango.png';
      case Flavors.acaiComCupuacu:
        return 'assets/acai_com_cupuacu.png';
      default:
        return null;
    }
  }

  List<Color> get colors {
    switch (this) {
      case Flavors.acaiPuro:
        return [
          Color(0xFF9a487f),
          Color(0xFF6A1953),
        ];
      case Flavors.acaiComBanana:
        return [
          Colors.yellow[600],
          Colors.yellow[900],
        ];
      case Flavors.acaiComMorango:
        return [
          Colors.red[600],
          Colors.red[900],
        ];
      case Flavors.acaiComCupuacu:
        return [
          Colors.brown[600],
          Colors.brown[900],
        ];
      default:
        return null;
    }
  }
}

extension AdditionalExtension on Additionals {
  int get itemType => 2;

  String get name {
    switch (this) {
      case Additionals.brigadeiro:
        return 'Brigadeiro';
      case Additionals.caldaDeChocolate:
        return 'Calda de chocolate';
      case Additionals.caldaDeChocolateComCoco:
        return 'Calda de chocolate com Coco';
      case Additionals.cerejas:
        return 'Cerejas';
      case Additionals.granola:
        return 'Granola';
      case Additionals.leiteCondensado:
        return 'Leite condensado';
      default:
        return null;
    }
  }

  String get imageURI {
    switch (this) {
      case Additionals.brigadeiro:
        return 'assets/acai_puro.png';
      case Additionals.caldaDeChocolate:
        return 'assets/acai_puro.png';
      case Additionals.caldaDeChocolateComCoco:
        return 'assets/acai_puro.png';
      case Additionals.cerejas:
        return 'assets/acai_puro.png';
      case Additionals.granola:
        return 'assets/acai_puro.png';
      case Additionals.leiteCondensado:
        return 'assets/acai_puro.png';
      default:
        return null;
    }
  }

  List<Color> get colors {
    switch (this) {
      case Additionals.brigadeiro:
        return [
          Color(0xFF9a487f),
          Color(0xFF6A1953),
        ];
      case Additionals.caldaDeChocolate:
        return [
          Color(0xFF9a487f),
          Color(0xFF6A1953),
        ];
      case Additionals.caldaDeChocolateComCoco:
        return [
          Color(0xFF9a487f),
          Color(0xFF6A1953),
        ];
      case Additionals.cerejas:
        return [
          Color(0xFF9a487f),
          Color(0xFF6A1953),
        ];
      case Additionals.granola:
        return [
          Color(0xFF9a487f),
          Color(0xFF6A1953),
        ];
      case Additionals.leiteCondensado:
        return [
          Color(0xFF9a487f),
          Color(0xFF6A1953),
        ];
      default:
        return null;
    }
  }
}
