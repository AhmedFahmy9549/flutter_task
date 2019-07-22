class ProductModel {
  String name;
  String picture;
  int price;
  int oldPrice;

  String color;
  String size;
  int quantity;

  ProductModel(
      {this.name,
      this.picture,
      this.price,
      this.oldPrice,
      this.size,
      this.color,
      this.quantity});

  String get getName {
    return name;
  }

  int get getPrice {
    return price;
  }

  String get getPicture {
    return picture;
  }

  int get getOldPrice {
    return oldPrice;
  }

  String get getColor {
    return color;
  }

  String get getSize {
    return size;
  }

  int get getQuantity {
    return quantity;
  }
}
