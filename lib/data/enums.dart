/* ******************************************* */
/*              DECLARATION OF ENUMS           */
/* ******************************************* */
enum Status { ASSIGNED }

enum Type { BOOLEAN, MULTIPLE }

enum Templates { TOURNAMENT, UNIQUE, COMBO }

/* ******************************************* */
/*          END OF DECLARATION OF ENUMS        */
/* ******************************************* */

/* ******************************************* */
/*                    GETTERS                  */
/* ******************************************* */
final statusValues = EnumValues({"assigned": Status.ASSIGNED});
final typeValues =
    EnumValues({"boolean": Type.BOOLEAN, "multiple": Type.MULTIPLE});
final TemplatesValues = EnumValues({
  "tournament": Templates.TOURNAMENT,
  "unique": Templates.UNIQUE,
  "combo": Templates.COMBO
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
/* ******************************************* */
/*                END OF GETTERS               */
/* ******************************************* */



/* ******************************************* */
/*                  EXTENSIONS                 */
/* ******************************************* */



/* ******************************************* */
/*              END OF EXTENSIONS              */
/* ******************************************* */
