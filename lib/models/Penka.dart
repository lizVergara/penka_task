import 'dart:convert';

import 'package:penka_task/data/enums.dart';

class TemplatePenkas {
  final String id;
  final String status;
  final bool published;
  final bool isPrivate;
  final bool? isStarred;
  final bool outstanding;
  final bool unique;
  final Templates type;
  final String name;
  final String nameEn;
  final String banner;
  final int? totalPenkas;
  final int? totalPenkasOnePart;
  final int? totalParticipants;
  final Dates dates;
  final List<String> matches;
  final List<Mention> mentions;
  final NextMatch? nextMatch;
  final Competition competition;
  final Gradient? gradient;
  final bool multiDeporte;
  final bool? onlyMentionsFlag;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  TemplatePenkas({
    required this.id,
    required this.status,
    required this.published,
    required this.isPrivate,
    this.isStarred,
    required this.outstanding,
    required this.unique,
    required this.type,
    required this.name,
    required this.nameEn,
    required this.banner,
    this.totalPenkas,
    required this.totalPenkasOnePart,
    required this.totalParticipants,
    required this.dates,
    required this.matches,
    required this.mentions,
    this.nextMatch,
    required this.competition,
    required this.gradient,
    required this.multiDeporte,
    this.onlyMentionsFlag,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory TemplatePenkas.fromRawJson(String str) =>
      TemplatePenkas.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TemplatePenkas.fromJson(Map<String, dynamic> json) => TemplatePenkas(
        id: json["_id"], //
        status: json["status"], //
        published: json["published"], //
        isPrivate: json["is_private"], //
        isStarred: json["is_starred"],
        outstanding: json["outstanding"], //
        unique: json["unique"], //
        type: TemplatesValues.map[json["type"]]!, //
        name: json["name"], //
        nameEn: json["name_en"], //
        banner: json["banner"], //
        totalPenkas: json["total_penkas"],
        totalPenkasOnePart: json["total_penkas_one_part"],
        totalParticipants: json["total_participants"],
        dates: Dates.fromJson(json["dates"]), //
        matches: List<String>.from(json["matches"].map((x) => x)), //
        mentions: List<Mention>.from(
            json["mentions"].map((x) => Mention.fromJson(x))), //
        nextMatch: json["next_match"] != null
            ? NextMatch.fromJson(json["next_match"])
            : null, //
        competition: Competition.fromJson(json["competition"]), //
        gradient: json["gradient"] != null
            ? Gradient.fromJson(json["gradient"])
            : null, //
        multiDeporte: json["multi_deporte"], //
        onlyMentionsFlag: json["onlyMentionsFlag"],
        createdAt: DateTime.parse(json["createdAt"]), //
        updatedAt: DateTime.parse(json["updatedAt"]), //
        v: json["__v"], //
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "status": status,
        "published": published,
        "is_private": isPrivate,
        "outstanding": outstanding,
        "unique": unique,
        "type": TemplatesValues.reverse[type],
        "name": name,
        "name_en": nameEn,
        "banner": banner,
        "total_penkas": totalPenkas,
        "total_penkas_one_part": totalPenkasOnePart,
        "total_participants": totalParticipants,
        "dates": dates.toJson(),
        "matches": List<dynamic>.from(matches.map((x) => x)),
        "mentions": List<dynamic>.from(mentions.map((x) => x.toJson())),
        "next_match": nextMatch?.toJson(),
        "competition": competition.toJson(),
        "gradient": gradient?.toJson(),
        "multi_deporte": multiDeporte,
        "onlyMentionsFlag": onlyMentionsFlag,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}

class Competition {
  final String id;
  final String name;
  final String flag;
  final String? bannerurl;
  final String? color;

  Competition({
    required this.id,
    required this.name,
    required this.flag,
    this.bannerurl,
    this.color,
  });

  factory Competition.fromRawJson(String str) =>
      Competition.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Competition.fromJson(Map<String, dynamic> json) => Competition(
        id: json["_id"],
        name: json["name"],
        flag: json["flag"],
        bannerurl: json["bannerurl"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "flag": flag,
        "bannerurl": bannerurl,
        "color": color,
      };
}

class Dates {
  final DateTime start;
  final DateTime end;

  Dates({
    required this.start,
    required this.end,
  });

  factory Dates.fromRawJson(String str) => Dates.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Dates.fromJson(Map<String, dynamic> json) => Dates(
        start: DateTime.parse(json["start"]),
        end: DateTime.parse(json["end"]),
      );

  Map<String, dynamic> toJson() => {
        "start": start.toIso8601String(),
        "end": end.toIso8601String(),
      };
}

class Gradient {
  final Local local;
  final Local visit;

  Gradient({
    required this.local,
    required this.visit,
  });

  factory Gradient.fromRawJson(String str) =>
      Gradient.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Gradient.fromJson(Map<String, dynamic> json) => Gradient(
        local: Local.fromJson(json["local"]),
        visit: Local.fromJson(json["visit"]),
      );

  Map<String, dynamic> toJson() => {
        "local": local.toJson(),
        "visit": visit.toJson(),
      };
}

class Local {
  final String gradientString;
  final String colorLeft;
  final String colorRight;

  Local({
    required this.gradientString,
    required this.colorLeft,
    required this.colorRight,
  });

  factory Local.fromRawJson(String str) => Local.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Local.fromJson(Map<String, dynamic> json) => Local(
        gradientString: json["gradientString"],
        colorLeft: json["colorLeft"],
        colorRight: json["colorRight"],
      );

  Map<String, dynamic> toJson() => {
        "gradientString": gradientString,
        "colorLeft": colorLeft,
        "colorRight": colorRight,
      };
}

class Mention {
  final String id;
  final dynamic result;
  final List<Option> options;
  final Status status;
  final int? points;
  final String question;
  final String questionEn;
  final Type type;

  Mention({
    required this.id,
    required this.result,
    required this.options,
    required this.status,
    this.points,
    required this.question,
    required this.questionEn,
    required this.type,
  });

  factory Mention.fromRawJson(String str) => Mention.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Mention.fromJson(Map<String, dynamic> json) => Mention(
        id: json["_id"],
        result: json["result"],
        options:
            List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
        status: statusValues.map[json["status"]]!,
        points: json["points"],
        question: json["question"],
        questionEn: json["question_en"],
        type: typeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "result": result,
        "options": List<dynamic>.from(options.map((x) => x.toJson())),
        "status": statusValues.reverse[status],
        "points": points,
        "question": question,
        "question_en": questionEn,
        "type": typeValues.reverse[type],
      };
}

class Option {
  final String description;
  final String? flag;
  final int? points;
  final String id;

  Option({
    required this.description,
    this.flag,
    this.points,
    required this.id,
  });

  factory Option.fromRawJson(String str) => Option.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        description: json["description"],
        flag: json["flag"],
        points: json["points"],
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "flag": flag,
        "points": points,
        "_id": id,
      };
}

// enum Status { ASSIGNED } //

// final statusValues = EnumValues({"assigned": Status.ASSIGNED});

// enum Type { BOOLEAN, MULTIPLE }

// final typeValues =
//     EnumValues({"boolean": Type.BOOLEAN, "multiple": Type.MULTIPLE});

// enum Templates { TOURNAMENT, UNIQUE }

// final TemplatesValues = EnumValues(
//     {"tournament": Templates.TOURNAMENT, "unique": Templates.UNIQUE});

class NextMatch {
  final String id;
  final Home home;
  final Home visit;

  NextMatch({
    required this.id,
    required this.home,
    required this.visit,
  });

  factory NextMatch.fromRawJson(String str) =>
      NextMatch.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NextMatch.fromJson(Map<String, dynamic> json) => NextMatch(
        id: json["_id"],
        home: Home.fromJson(json["home"]),
        visit: Home.fromJson(json["visit"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "home": home.toJson(),
        "visit": visit.toJson(),
      };
}

class Home {
  final String id;
  final String name;
  final String flag;

  Home({
    required this.id,
    required this.name,
    required this.flag,
  });

  factory Home.fromRawJson(String str) => Home.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Home.fromJson(Map<String, dynamic> json) => Home(
        id: json["_id"],
        name: json["name"],
        flag: json["flag"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "flag": flag,
      };
}

// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
