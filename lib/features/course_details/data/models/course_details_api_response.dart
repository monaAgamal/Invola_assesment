import 'dart:convert';

class CourseDetailsApiResponse {
  final int id;
  final String title;
  final List<String> img;
  final String interest;
  final int price;
  final DateTime date;
  final String address;
  final String trainerName;
  final String trainerImg;
  final String trainerInfo;
  final String occasionDetail;
  final String latitude;
  final String longitude;
  final bool isLiked;
  final bool isSold;
  final bool isPrivateEvent;
  final bool hiddenCashPayment;
  final int specialForm;
  dynamic questionnaire;
  dynamic questExplanation;
  final List<ReserveType> reserveTypes;

  CourseDetailsApiResponse({
    required this.id,
    required this.title,
    required this.img,
    required this.interest,
    required this.price,
    required this.date,
    required this.address,
    required this.trainerName,
    required this.trainerImg,
    required this.trainerInfo,
    required this.occasionDetail,
    required this.latitude,
    required this.longitude,
    required this.isLiked,
    required this.isSold,
    required this.isPrivateEvent,
    required this.hiddenCashPayment,
    required this.specialForm,
    this.questionnaire,
    this.questExplanation,
    required this.reserveTypes,
  });

  factory CourseDetailsApiResponse.fromJson(Map<String, dynamic> json) =>
      CourseDetailsApiResponse(
        id: json["id"],
        title: json["title"],
        img: List<String>.from(json["img"].map((x) => x)),
        interest: json["interest"],
        price: json["price"],
        date: DateTime.parse(json["date"]),
        address: json["address"],
        trainerName: json["trainerName"],
        trainerImg: json["trainerImg"],
        trainerInfo: json["trainerInfo"],
        occasionDetail: json["occasionDetail"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        isLiked: json["isLiked"],
        isSold: json["isSold"],
        isPrivateEvent: json["isPrivateEvent"],
        hiddenCashPayment: json["hiddenCashPayment"],
        specialForm: json["specialForm"],
        questionnaire: json["questionnaire"],
        questExplanation: json["questExplanation"],
        reserveTypes: List<ReserveType>.from(
            json["reservTypes"].map((x) => ReserveType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "img": List<dynamic>.from(img.map((x) => x)),
        "interest": interest,
        "price": price,
        "date": date.toIso8601String(),
        "address": address,
        "trainerName": trainerName,
        "trainerImg": trainerImg,
        "trainerInfo": trainerInfo,
        "occasionDetail": occasionDetail,
        "latitude": latitude,
        "longitude": longitude,
        "isLiked": isLiked,
        "isSold": isSold,
        "isPrivateEvent": isPrivateEvent,
        "hiddenCashPayment": hiddenCashPayment,
        "specialForm": specialForm,
        "questionnaire": questionnaire,
        "questExplanation": questExplanation,
        "reservTypes": List<dynamic>.from(reserveTypes.map((x) => x.toJson())),
      };
}

class ReserveType {
  final int id;
  final String name;
  final int count;
  final double price;

  ReserveType({
    required this.id,
    required this.name,
    required this.count,
    required this.price,
  });

  factory ReserveType.fromRawJson(String str) =>
      ReserveType.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReserveType.fromJson(Map<String, dynamic> json) => ReserveType(
        id: json["id"],
        name: json["name"],
        count: json["count"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "count": count,
        "price": price,
      };
}
