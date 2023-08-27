class HomeModel {
  bool? status;
  String? message;
  Data? data;

  // HomeModel({this.status, this.message, this.data});

  HomeModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    // data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Sliders>? sliders;
  List<Brands>? brands;
  List<Cars>? cars;

  Data({this.sliders, this.brands, this.cars});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['sliders'] != null) {
      sliders = <Sliders>[];
      json['sliders'].forEach((v) {
        sliders!.add(Sliders.fromJson(v));
      });
    }
    if (json['brands'] != null) {
      brands = <Brands>[];
      json['brands'].forEach((v) {
        brands!.add(Brands.fromJson(v));
      });
    }
    if (json['cars'] != null) {
      cars = <Cars>[];
      json['cars'].forEach((v) {
        cars!.add(Cars.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (sliders != null) {
      data['sliders'] = sliders!.map((v) => v.toJson()).toList();
    }
    if (brands != null) {
      data['brands'] = brands!.map((v) => v.toJson()).toList();
    }
    if (cars != null) {
      data['cars'] = cars!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

// class Data {
//   final List<Sliders> sliders;
//   final List<Brands> brands;
//   final List<Cars> cars;

//   Data({
//     required this.sliders,
//     required this.brands,
//     required this.cars,
//   });

//   Data copyWith({
//     List<Sliders>? sliders,
//     List<Brands>? brands,
//     List<Cars>? cars,
//   }) =>
//       Data(
//         sliders: sliders ?? this.sliders,
//         brands: brands ?? this.brands,
//         cars: cars ?? this.cars,
//       );

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         sliders:
//             List<Sliders>.from(json["sliders"].map((x) => Sliders.fromJson(x))),
//         brands:
//             List<Brands>.from(json["brands"].map((x) => Brands.fromJson(x))),
//         cars: List<Cars>.from(json["cars"].map((x) => Cars.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "sliders": List<dynamic>.from(sliders.map((x) => x.toJson())),
//         "brands": List<dynamic>.from(brands.map((x) => x.toJson())),
//         "cars": List<dynamic>.from(cars.map((x) => x.toJson())),
//       };
// }

class Sliders {
  int? id;
  String? image;
  String? title;

  Sliders({this.id, this.image, this.title});

  Sliders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    return data;
  }
}

class Brands {
  int? id;
  String? name;
  String? logo;

  Brands({this.id, this.name, this.logo});

  Brands.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['logo'] = this.logo;
    return data;
  }
}

class Cars {
  int? id;
  String? name;
  String? image;
  int? price;
  int? stars;
  int? ratingsCount;
  String? enginePower;
  String? maxTorque;
  String? acceleration;
  Brands? brand;

  Cars(
      {this.id,
      this.name,
      this.image,
      this.price,
      this.stars,
      this.ratingsCount,
      this.enginePower,
      this.maxTorque,
      this.acceleration,
      this.brand});

  Cars.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    stars = json['stars'];
    ratingsCount = json['ratings_count'];
    enginePower = json['engine_power'];
    maxTorque = json['max_torque'];
    acceleration = json['acceleration'];
    brand = json['brand'] != null ? new Brands.fromJson(json['brand']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['price'] = this.price;
    data['stars'] = this.stars;
    data['ratings_count'] = this.ratingsCount;
    data['engine_power'] = this.enginePower;
    data['max_torque'] = this.maxTorque;
    data['acceleration'] = this.acceleration;
    if (this.brand != null) {
      data['brand'] = this.brand!.toJson();
    }
    return data;
  }
}
