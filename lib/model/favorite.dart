import 'dart:ui';

class CarsFavorite {
  int id;
  String name;
  String complete;
  int cost;
  List characteristics;
  String specification;
  String linkVideo;
  List linksImages;
  bool statusFavoriteCarsSButton;
  Color colorFavoriteCarsButton;
  bool statusCartCarsButton;
  Color colorCartCarsButton;
  bool isButtonDisabled;
  int count;

  CarsFavorite(
      this.id,
      this.name,
      this.complete,
      this.cost,
      this.characteristics,
      this.specification,
      this.linkVideo,
      this.linksImages,
      this.statusFavoriteCarsSButton,
      this.colorFavoriteCarsButton,
      this.statusCartCarsButton,
      this.colorCartCarsButton,
      this.isButtonDisabled,
      this.count
      );
}

List<CarsFavorite> favoriteCars = [];