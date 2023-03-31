enum Flavor { dev, prod, hml }

Flavor appFlavor = Flavor.dev;

extension FlavoreExt on Flavor {
  String get title {
    switch (this) {
      case Flavor.dev:
        return 'apperp Dev';
      case Flavor.hml:
        return 'apperp Hom';
      default:
        return 'apperp';
    }
  }

  bool get isDev => this == Flavor.dev;
  bool get isHom => this == Flavor.hml;
  bool get isProd => this == Flavor.prod;

  String urlBase({required String preffix}) {
    switch (this) {
      case Flavor.dev:
        return 'http://$preffix.tech/';
      case Flavor.prod:
        return 'http://$preffix.tech/';
      case Flavor.hml:
        return 'http://$preffix.tech/';
      default:
        return 'http://$preffix.tech/';
    }
  }
}
