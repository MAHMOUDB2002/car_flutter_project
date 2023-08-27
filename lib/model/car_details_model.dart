// To parse this JSON data, do
//
//     final carDetailsModel = carDetailsModelFromJson(jsonString);

import 'dart:convert';

CarDetailsModel carDetailsModelFromJson(String str) => CarDetailsModel.fromJson(json.decode(str));

String carDetailsModelToJson(CarDetailsModel data) => json.encode(data.toJson());

class CarDetailsModel {
    bool? status;
    String? message;
    Data? data;

    CarDetailsModel({
        this.status,
        this.message,
        this.data,
    });

    factory CarDetailsModel.fromJson(Map<String, dynamic> json) => CarDetailsModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data?.toJson(),
    };
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

    Data({
        this.id,
        this.name,
        this.image,
        this.price,
        this.stars,
        this.ratingsCount,
        this.enginePower,
        this.maxTorque,
        this.acceleration,
        this.brand,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        price: json["price"],
        stars: json["stars"],
        ratingsCount: json["ratings_count"],
        enginePower: json["engine_power"],
        maxTorque: json["max_torque"],
        acceleration: json["acceleration"],
        brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "price": price,
        "stars": stars,
        "ratings_count": ratingsCount,
        "engine_power": enginePower,
        "max_torque": maxTorque,
        "acceleration": acceleration,
        "brand": brand?.toJson(),
    };
}

class Brand {
    int? id;
    String? name;
    String? logo;

    Brand({
        this.id,
        this.name,
        this.logo,
    });

    factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json["id"],
        name: json["name"],
        logo: json["logo"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "logo": logo,
    };
}
