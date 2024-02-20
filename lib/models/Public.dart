import 'dart:convert';

class PublicPenka {
  final String? nameEn;
  final String? banner;
  final CustomPoints customPoints;
  final bool multisport;
  final dynamic deletedAt;
  final String id;
  final Status status;
  final bool isPublic;
  final String name;
  final String description;
  final String bannerId;
  final List<dynamic> participants;
  final List<dynamic> permissions;
  final List<dynamic> paid;
  final int limit;
  final Dates dates;
  final Prize prize;
  final Template template;
  final List<Match> matches;
  final PublicType type;
  final String code;
  final List<dynamic> userPrizes;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;
  final bool isPublicActive;
  final Maker maker;
  final int totalParticipants;
  final int totalMatches;

  PublicPenka({
    this.nameEn,
    this.banner,
    required this.customPoints,
    required this.multisport,
    this.deletedAt,
    required this.id,
    required this.status,
    required this.isPublic,
    required this.name,
    required this.description,
    required this.bannerId,
    required this.participants,
    required this.permissions,
    required this.paid,
    required this.limit,
    required this.dates,
    required this.prize,
    required this.template,
    required this.matches,
    required this.type,
    required this.code,
    required this.userPrizes,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.isPublicActive,
    required this.maker,
    required this.totalParticipants,
    required this.totalMatches,
  });

  factory PublicPenka.fromRawJson(String str) =>
      PublicPenka.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PublicPenka.fromJson(Map<String, dynamic> json) => PublicPenka(
        nameEn: json["name_en"],
        banner: json["banner"],
        customPoints: CustomPoints.fromJson(json["custom_points"]),
        multisport: json["multisport"],
        deletedAt: json["deletedAt"],
        id: json["_id"],
        status: statusValues.map[json["status"]]!,
        isPublic: json["isPublic"],
        name: json["name"],
        description: json["description"],
        bannerId: json["bannerId"],
        participants: List<dynamic>.from(json["participants"].map((x) => x)),
        permissions: List<dynamic>.from(json["permissions"].map((x) => x)),
        paid: List<dynamic>.from(json["paid"].map((x) => x)),
        limit: json["limit"],
        dates: Dates.fromJson(json["dates"]),
        prize: Prize.fromJson(json["prize"]),
        template: Template.fromJson(json["template"]),
        matches:
            List<Match>.from(json["matches"].map((x) => Match.fromJson(x))),
        type: PublicTypeValues.map[json["type"]]!,
        code: json["code"],
        userPrizes: List<dynamic>.from(json["user_prizes"].map((x) => x)),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        isPublicActive: json["is_public_active"],
        maker: Maker.fromJson(json["maker"]),
        totalParticipants: json["totalParticipants"],
        totalMatches: json["totalMatches"],
      );

  Map<String, dynamic> toJson() => {
        "name_en": nameEn,
        "banner": banner,
        "custom_points": customPoints.toJson(),
        "multisport": multisport,
        "deletedAt": deletedAt,
        "_id": id,
        "status": statusValues.reverse[status],
        "isPublic": isPublic,
        "name": name,
        "description": description,
        "bannerId": bannerId,
        "participants": List<dynamic>.from(participants.map((x) => x)),
        "permissions": List<dynamic>.from(permissions.map((x) => x)),
        "paid": List<dynamic>.from(paid.map((x) => x)),
        "limit": limit,
        "dates": dates.toJson(),
        "prize": prize.toJson(),
        "template": template.toJson(),
        "matches": List<dynamic>.from(matches.map((x) => x.toJson())),
        "type": PublicTypeValues.reverse[type],
        "code": code,
        "user_prizes": List<dynamic>.from(userPrizes.map((x) => x)),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "is_public_active": isPublicActive,
        "maker": maker.toJson(),
        "totalParticipants": totalParticipants,
        "totalMatches": totalMatches,
      };
}

class CustomPoints {
  final dynamic matches;
  final dynamic mentions;

  CustomPoints({
    this.matches,
    this.mentions,
  });

  factory CustomPoints.fromRawJson(String str) =>
      CustomPoints.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomPoints.fromJson(Map<String, dynamic> json) => CustomPoints(
        matches: json["matches"],
        mentions: json["mentions"],
      );

  Map<String, dynamic> toJson() => {
        "matches": matches,
        "mentions": mentions,
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

class Maker {
  final Id id;
  final String googleId;
  final Fullname fullname;
  final Username username;
  final Email email;
  final String profilePicture;
  final bool partner;

  Maker({
    required this.id,
    required this.googleId,
    required this.fullname,
    required this.username,
    required this.email,
    required this.profilePicture,
    required this.partner,
  });

  factory Maker.fromRawJson(String str) => Maker.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Maker.fromJson(Map<String, dynamic> json) => Maker(
        id: idValues.map[json["_id"]]!,
        googleId: json["googleId"],
        fullname: fullnameValues.map[json["fullname"]]!,
        username: usernameValues.map[json["username"]]!,
        email: emailValues.map[json["email"]]!,
        profilePicture: json["profile_picture"],
        partner: json["partner"],
      );

  Map<String, dynamic> toJson() => {
        "_id": idValues.reverse[id],
        "googleId": googleId,
        "fullname": fullnameValues.reverse[fullname],
        "username": usernameValues.reverse[username],
        "email": emailValues.reverse[email],
        "profile_picture": profilePicture,
        "partner": partner,
      };
}

enum Email { JAIMEKG17_GMAIL_COM, JAIME_PENKA_IO, NICOLASMILIERIS90_GMAIL_COM }

final emailValues = EnumValues({
  "jaimekg17@gmail.com": Email.JAIMEKG17_GMAIL_COM,
  "jaime@penka.io": Email.JAIME_PENKA_IO,
  "nicolasmilieris90@gmail.com": Email.NICOLASMILIERIS90_GMAIL_COM
});

enum Fullname { EQUIPO_PENKA, JAIME_KAUFFMAN, NICO_MILIERIS }

final fullnameValues = EnumValues({
  "Equipo Penka": Fullname.EQUIPO_PENKA,
  "Jaime Kauffman": Fullname.JAIME_KAUFFMAN,
  "Nico Milieris": Fullname.NICO_MILIERIS
});

enum Id {
  THE_631979_A63492220521_B898_E6,
  THE_6319_A0_F1660_E7_E7983_D7_B072,
  THE_653_A8_F73_D8_C1_A7_BD3_E27_E083
}

final idValues = EnumValues({
  "631979a63492220521b898e6": Id.THE_631979_A63492220521_B898_E6,
  "6319a0f1660e7e7983d7b072": Id.THE_6319_A0_F1660_E7_E7983_D7_B072,
  "653a8f73d8c1a7bd3e27e083": Id.THE_653_A8_F73_D8_C1_A7_BD3_E27_E083
});

enum Username { JAIME_KAUFFMAN, JAIME_PERU, NICOTE13 }

final usernameValues = EnumValues({
  "Jaime Kauffman": Username.JAIME_KAUFFMAN,
  "Jaime Peru": Username.JAIME_PERU,
  "Nicote13": Username.NICOTE13
});

class Match {
  final String id;
  final Status status;
  final TeamClass competition;
  final Dates dates;
  final Scores scores;
  final int? phase;
  final Stage? stage;

  Match({
    required this.id,
    required this.status,
    required this.competition,
    required this.dates,
    required this.scores,
    this.phase,
    this.stage,
  });

  factory Match.fromRawJson(String str) => Match.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Match.fromJson(Map<String, dynamic> json) => Match(
        id: json["_id"],
        status: statusValues.map[json["status"]]!,
        competition: TeamClass.fromJson(json["competition"]),
        dates: Dates.fromJson(json["dates"]),
        scores: Scores.fromJson(json["scores"]),
        phase: json["phase"],
        stage: json["stage"] != null ? stageValues.map[json["stage"]]! : null,
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "status": statusValues.reverse[status],
        "competition": competition.toJson(),
        "dates": dates.toJson(),
        "scores": scores.toJson(),
        "phase": phase,
        "stage": stageValues.reverse[stage],
      };
}

class TeamClass {
  final String id;
  final String name;
  final String flag;
  final String? alias;

  TeamClass({
    required this.id,
    required this.name,
    required this.flag,
    this.alias,
  });

  factory TeamClass.fromRawJson(String str) =>
      TeamClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TeamClass.fromJson(Map<String, dynamic> json) => TeamClass(
        id: json["_id"],
        name: json["name"],
        flag: json["flag"],
        alias: json["alias"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "flag": flag,
        "alias": alias,
      };
}

class Scores {
  final Home home;
  final Visit visit;

  Scores({
    required this.home,
    required this.visit,
  });

  factory Scores.fromRawJson(String str) => Scores.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Scores.fromJson(Map<String, dynamic> json) => Scores(
        home: Home.fromJson(json["home"]),
        visit: Visit.fromJson(json["visit"]),
      );

  Map<String, dynamic> toJson() => {
        "home": home.toJson(),
        "visit": visit.toJson(),
      };
}

class Home {
  final Team team;
  final int score;

  Home({
    required this.team,
    required this.score,
  });

  factory Home.fromRawJson(String str) => Home.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Home.fromJson(Map<String, dynamic> json) => Home(
        team: Team.fromJson(json["team"]),
        score: json["score"],
      );

  Map<String, dynamic> toJson() => {
        "team": team.toJson(),
        "score": score,
      };
}

class Team {
  final String id;
  final String flag;
  final String alias;
  final String name;
  final dynamic federation;

  Team({
    required this.id,
    required this.flag,
    required this.alias,
    required this.name,
    this.federation,
  });

  factory Team.fromRawJson(String str) => Team.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json["_id"],
        flag: json["flag"],
        alias: json["alias"],
        name: json["name"],
        federation: json["federation"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "flag": flag,
        "alias": alias,
        "name": name,
        "federation": federation,
      };
}

class Visit {
  final TeamClass team;
  final int score;

  Visit({
    required this.team,
    required this.score,
  });

  factory Visit.fromRawJson(String str) => Visit.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Visit.fromJson(Map<String, dynamic> json) => Visit(
        team: TeamClass.fromJson(json["team"]),
        score: json["score"],
      );

  Map<String, dynamic> toJson() => {
        "team": team.toJson(),
        "score": score,
      };
}

enum Stage {
  FASE_DE_GRUPOS_FECHA_1,
  FASE_DE_GRUPOS_FECHA_2,
  FASE_DE_GRUPOS_FECHA_3,
  NULL,
  OCTAVOS_DE_FINAL
}

final stageValues = EnumValues({
  "Fase de grupos - Fecha 1": Stage.FASE_DE_GRUPOS_FECHA_1,
  "Fase de grupos - Fecha 2": Stage.FASE_DE_GRUPOS_FECHA_2,
  "Fase de grupos - Fecha 3": Stage.FASE_DE_GRUPOS_FECHA_3,
  "null": Stage.NULL,
  "Octavos de Final": Stage.OCTAVOS_DE_FINAL
});

enum Status { ACTIVE, INACTIVE }

final statusValues =
    EnumValues({"active": Status.ACTIVE, "inactive": Status.INACTIVE});

class Prize {
  final PrizeType type;
  final dynamic coin;
  final dynamic bet;
  final Description description;

  Prize({
    required this.type,
    this.coin,
    this.bet,
    required this.description,
  });

  factory Prize.fromRawJson(String str) => Prize.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Prize.fromJson(Map<String, dynamic> json) => Prize(
        type: prizeTypeValues.map[json["type"]]!,
        coin: json["coin"],
        bet: json["bet"],
        description: descriptionValues.map[json["description"]]!,
      );

  Map<String, dynamic> toJson() => {
        "type": prizeTypeValues.reverse[type],
        "coin": coin,
        "bet": bet,
        "description": descriptionValues.reverse[description],
      };
}

enum Description { DESCRIPTION, EMPTY }

final descriptionValues = EnumValues({
  "\ud83c\udf81": Description.DESCRIPTION,
  "\ud83c\udfc6": Description.EMPTY
});

enum PrizeType { CUSTOM }

final prizeTypeValues = EnumValues({"custom": PrizeType.CUSTOM});

class Template {
  final String id;
  final Status status;
  final bool unique;
  final TemplateCompetition? competition;
  final String? banner;
  final String? name;
  final bool? bannerUpdatedManually;

  Template({
    required this.id,
    required this.status,
    required this.unique,
    this.competition,
    this.banner,
    this.name,
    this.bannerUpdatedManually,
  });

  factory Template.fromRawJson(String str) =>
      Template.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Template.fromJson(Map<String, dynamic> json) => Template(
        id: json["_id"],
        status: statusValues.map[json["status"]]!,
        unique: json["unique"],
        competition: json["competition"] == null
            ? null
            : TemplateCompetition.fromJson(json["competition"]),
        banner: json["banner"],
        name: json["name"],
        bannerUpdatedManually: json["bannerUpdatedManually"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "status": statusValues.reverse[status],
        "unique": unique,
        "competition": competition?.toJson(),
        "banner": banner,
        "name": name,
        "bannerUpdatedManually": bannerUpdatedManually,
      };
}

class TemplateCompetition {
  final String id;
  final String name;
  final String flag;
  final String color;
  final dynamic bannerurl;

  TemplateCompetition({
    required this.id,
    required this.name,
    required this.flag,
    required this.color,
    this.bannerurl,
  });

  factory TemplateCompetition.fromRawJson(String str) =>
      TemplateCompetition.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TemplateCompetition.fromJson(Map<String, dynamic> json) =>
      TemplateCompetition(
        id: json["_id"],
        name: json["name"],
        flag: json["flag"],
        color: json["color"],
        bannerurl: json["bannerurl"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "flag": flag,
        "color": color,
        "bannerurl": bannerurl,
      };
}

enum PublicType { TOURNAMENT, UNIQUE }

final PublicTypeValues = EnumValues(
    {"tournament": PublicType.TOURNAMENT, "unique": PublicType.UNIQUE});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
