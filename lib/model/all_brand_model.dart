// To parse this JSON data, do
//
//     final allBrandModel = allBrandModelFromJson(jsonString);

import 'dart:convert';

AllBrandModel allBrandModelFromJson(String str) => AllBrandModel.fromJson(json.decode(str));

String allBrandModelToJson(AllBrandModel data) => json.encode(data.toJson());

class AllBrandModel {
    bool? status;
    String? message;
    List<Datum>? data;

    AllBrandModel({
        this.status,
        this.message,
        this.data,
    });

    factory AllBrandModel.fromJson(Map<String, dynamic> json) => AllBrandModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    int? id;
    String? name;
    String? logo;

    Datum({
        this.id,
        this.name,
        this.logo,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
