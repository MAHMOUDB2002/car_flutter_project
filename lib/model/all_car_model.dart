// // To parse this JSON data, do
// //
// //     final allCarModel = allCarModelFromJson(jsonString);

// import 'dart:convert';

// AllCarModel allCarModelFromJson(String str) => AllCarModel.fromJson(json.decode(str));

// String allCarModelToJson(AllCarModel data) => json.encode(data.toJson());

// class AllCarModel {
//     bool? status;
//     String? message;
//     List<Data>? data;

//     AllCarModel({
//         this.status,
//         this.message,
//         this.data,
//     });

//     factory AllCarModel.fromJson(Map<String, dynamic> json) => AllCarModel(
//         status: json["status"],
//         message: json["message"],
//         data: json["data"] == null ? [] : List<Data>.from(json["data"]!.map((x) => Data.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "status": status,
//         "message": message,
//         "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
//     };
// }

// class Data {
//     int? id;
//     String? name;
//     String? image;
//     int? price;
//     int? stars;
//     int? ratingsCount;
//     String? enginePower;
//     String? maxTorque;
//     String? acceleration;
//     Brand? brand;

//     Data({
//         this.id,
//         this.name,
//         this.image,
//         this.price,
//         this.stars,
//         this.ratingsCount,
//         this.enginePower,
//         this.maxTorque,
//         this.acceleration,
//         this.brand,
//     });

//     factory Data.fromJson(Map<String, dynamic> json) => Data(
//         id: json["id"],
//         name: json["name"],
//         image: json["image"],
//         price: json["price"],
//         stars: json["stars"],
//         ratingsCount: json["ratings_count"],
//         enginePower: json["engine_power"],
//         maxTorque: json["max_torque"],
//         acceleration: json["acceleration"],
//         brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "image": image,
//         "price": price,
//         "stars": stars,
//         "ratings_count": ratingsCount,
//         "engine_power": enginePower,
//         "max_torque": maxTorque,
//         "acceleration": acceleration,
//         "brand": brand?.toJson(),
//     };
// }

// class Brand {
//     int? id;
//     String? name;
//     String? logo;

//     Brand({
//         this.id,
//         this.name,
//         this.logo,
//     });

//     factory Brand.fromJson(Map<String, dynamic> json) => Brand(
//         id: json["id"],
//         name: json["name"],
//         logo: json["logo"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "logo": logo,
//     };
// }

class AllCarsModel {
  bool? status;
  String? message;
  List<Data>? data;

  AllCarsModel({this.status, this.message, this.data});

  AllCarsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? image;
  int? price;
  int? stars;
  int? ratingsCount;
  String? enginePower;
  String? maxTorque;
  String? acceleration;
  Brand? brand;

  Data(
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

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    stars = json['stars'];
    ratingsCount = json['ratings_count'];
    enginePower = json['engine_power'];
    maxTorque = json['max_torque'];
    acceleration = json['acceleration'];
    brand = json['brand'] != null ? new Brand.fromJson(json['brand']) : null;
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

class Brand {
  int? id;
  String? name;
  String? logo;

  Brand({this.id, this.name, this.logo});

  Brand.fromJson(Map<String, dynamic> json) {
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
